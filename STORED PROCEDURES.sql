DELIMITER $
DROP PROCEDURE IF EXISTS employee_applications$
CREATE PROCEDURE employee_applications(IN in_name VARCHAR(25), IN in_surname VARCHAR(35))
BEGIN
DECLARE emp_username VARCHAR(12);

SELECT USERNAME INTO emp_username FROM  USERS WHERE NAME=in_name AND SURNAME=in_surname;


SELECT NAME, SURNAME, JOB_ID AS 'ID', POSITION, EDRA   /*Εκτύπωση αιτήσεων εργαζομένου*/
FROM SUBMIT_APPLICATION
INNER JOIN EMPLOYEE ON EMPL_USERNAME = USERNAME
INNER JOIN USERS ON EMPL_USERNAME=USERS.USERNAME
INNER JOIN JOB ON SUBMIT_APPLICATION.JOB_ID = JOB.ID
WHERE EMPL_USERNAME=emp_username AND SUBMISSION_DATE > CURDATE();

SELECT EVID, USERS.NAME, USERS.SURNAME, JOB_ID, POSITION, EDRA, GRADE /*Εκτύπωση τελικών αξιολογήσεων εργαζομένου*/
FROM EVALUATIONRESULT
INNER JOIN EMPLOYEE ON EMPL_USERNAME = USERNAME 
INNER JOIN JOB ON EVALUATIONRESULT.JOB_ID = JOB.ID
INNER JOIN EVALUATOR ON EVALUATOR.USERNAME = JOB.EVALUATOR
INNER JOIN USERS ON EVALUATIONRESULT.EMPL_USERNAME=USERS.USERNAME
WHERE EMPL_USERNAME=emp_username;

SELECT 'EVALUATOR';

SELECT EVID, NAME, SURNAME  
FROM USERS 
INNER JOIN EVALUATOR ON EVALUATOR.USERNAME = USERS.USERNAME /*Εκτύπωση αντίστοιχων αξιολογητών*/
INNER JOIN JOB ON JOB.EVALUATOR = EVALUATOR.USERNAME
INNER JOIN EVALUATIONRESULT ON JOB_ID = JOB.ID 
WHERE EMPL_USERNAME = emp_username;

SELECT 'EVALUATION IN PROCESS';

SELECT EVALUATION_ID, USERS.NAME, USERS.SURNAME /*Εκτύπωση των αξιολογήσεων που βρίσκονται σε εξέλιξη*/
FROM EVALUATION
INNER JOIN EMPLOYEE ON EMPL_USERNAME = EMPLOYEE.USERNAME 
INNER JOIN JOB ON EVALUATION.JOB_ID = JOB.ID
INNER JOIN EVALUATOR ON EVALUATOR.USERNAME = JOB.EVALUATOR
INNER JOIN USERS ON EVALUATION.EMPL_USERNAME=USERS.USERNAME
LEFT JOIN EVALUATIONRESULT ON EVALUATION.EVALUATION_ID = EVALUATIONRESULT.EVID
WHERE EVALUATION.EMPL_USERNAME=emp_username AND EVALUATIONRESULT.EVID IS NULL;

END$

DELIMITER ;






DELIMITER $
DROP PROCEDURE IF EXISTS evaluation_checker$ /*Έλεγχος αξιολογήσεων και οριστικοποίηση τους*/
CREATE PROCEDURE evaluation_checker(IN in_job_id INT(4), IN in_evaluator_id INT(4))
BEGIN
DECLARE ev_id INT(4);
DECLARE emp_username VARCHAR(12);
DECLARE grade_sum INT(4);
DECLARE comm VARCHAR(255);
DECLARE g_a INT(4);
DECLARE g_b INT(4);
DECLARE g_c INT(4);
DECLARE evflag INT;
DECLARE evaluationCursor CURSOR FOR 
SELECT EVALUATION_ID, EMPL_USERNAME, GRADE_A, GRADE_B, GRADE_C, COMMENTS FROM EVALUATION /*Επιλέγουμε όλες τις αξιολογήσεις του αξιολογητή στην δοσμένη θέση εργασίας*/
INNER JOIN JOB ON EVALUATION.JOB_ID=JOB.ID
INNER JOIN EVALUATOR ON JOB.EVALUATOR=EVALUATOR.USERNAME
WHERE in_job_id=EVALUATION.JOB_ID AND in_evaluator_id=EVALUATOR.ID; 
DECLARE CONTINUE HANDLER FOR NOT FOUND SET evflag=1;
OPEN evaluationCursor;
SET evflag=0;
WHILE (evflag=0) DO
FETCH evaluationCursor INTO ev_id, emp_username, g_a, g_b, g_c, comm;
SET grade_sum=0;
IF(g_a IS NOT NULL AND g_b IS NOT NULL AND g_c IS NOT NULL) THEN /*Εάν ένας βαθμός είναι null σημαίνει πως η αξιολόγηση βρίσκεται σε εξέλιξη άρα ελέγχουμε τις αξιολογήσεις που έχουν βαθμούς*/
SET grade_sum = g_a + g_b + g_c; /*Υπολογισμός αθροίσματος*/
INSERT IGNORE INTO EVALUATIONRESULT VALUES(ev_id, emp_username, in_job_id, grade_sum, comm); /*Οριστικοποιούμε τις αξιολογήσεις κάνοντας Insert στον πίνακα EVALUATIONRESULT, αν υπάρχει ήδη κάποια αξιολόγηση που έχει οριστικοποιηθεί την αγνοούμε με την εντολή IGNORE*/
END IF;
END WHILE;
CLOSE evaluationCursor; 
END$
DELIMITER ;



DELIMITER $
DROP PROCEDURE IF EXISTS job_checker$
CREATE PROCEDURE job_checker(IN in_id INT(4))
BEGIN
DECLARE gr_a INT(4);
DECLARE gr_b INT(4);
DECLARE gr_c INT(4);
DECLARE gr_count INT;
DECLARE eva_count INT(4);
DECLARE gradeflag INT;
DECLARE user_name VARCHAR(25);
DECLARE user_surname VARCHAR(35);
DECLARE ev_id INT(4);



DECLARE gradeCursor1 CURSOR FOR
SELECT EVALUATION_ID, NAME, SURNAME, GRADE_A, GRADE_B, GRADE_C FROM EVALUATION INNER JOIN USERS ON EMPL_USERNAME=USERS.USERNAME WHERE JOB_ID=in_id; 
/*Σε περίπτωση που έχουμε αξιολογήσεις που  δεν έχουν οριστικοποιηθεί χρησιμοποιείται ο gradeCursor1 για να μας εμφανίσει τις ολοκληρωμένες αξιολογήσεις*/



DECLARE gradeCursor2 CURSOR FOR
SELECT EVALUATION_ID, NAME, SURNAME, GRADE_A, GRADE_B, GRADE_C FROM EVALUATION INNER JOIN USERS ON EMPL_USERNAME=USERS.USERNAME WHERE JOB_ID=in_id;
/*Σε περίπτωση που έχουμε αξιολογήσεις που  δεν έχουν οριστικοποιηθεί χρησιμοποιείται ο gradeCursor2 για να μας εμφανίσει τις  αξιολογήσεις που εκκρεμούν*/

DECLARE CONTINUE HANDLER FOR NOT FOUND SET gradeflag=1;
SET gradeflag=0;

SELECT COUNT(*) INTO gr_count FROM EVALUATION WHERE JOB_ID=in_id AND (GRADE_A IS NULL OR GRADE_B IS NULL OR GRADE_C IS NULL);
/*Καταμέτρηση αξιολογήσεων που εκκρεμούν σε μία θέση εργασίας*/

SELECT COUNT(*) INTO eva_count FROM EVALUATION WHERE JOB_ID=in_id;
/*Καταμέτρηση όλων των αξιολογήσεων μίας θέσης εργασίας*/

IF(eva_count!=0) THEN /*Έλεγχος αν υπάρχουν αξιολογήσεις σε μία θέση εργασίας (Οριστικοποιημένες και μη)*/
    IF(gr_count=0) THEN /*Έλεγχος αν υπάρχουν αξιολογήσεις που δεν είναι οριστικοποιημένες*/
        /*Περίπτωση που όλες οι αξιολογήσεις είναι οριστικοποιημένες*/
        SELECT 'FINALIZED TABLES';
        SELECT EVID AS ID, NAME, SURNAME, GRADE 
        FROM EVALUATIONRESULT
        INNER JOIN USERS ON EMPL_USERNAME=USERS.USERNAME
        WHERE EMPL_USERNAME=USERS.USERNAME AND JOB_ID=in_id
        ORDER BY GRADE DESC;
    ELSE
        /*Περίπτωση που υπάρχουν αξιολογήσεις που εκκρεμούν */
        SELECT 'COMPLETED EVALUATIONS';
        OPEN gradeCursor1;
        FETCH gradeCursor1 INTO ev_id, user_name, user_surname, gr_a, gr_b, gr_c;
        WHILE(gradeflag=0) DO
            IF(gr_a IS NOT NULL AND gr_b IS NOT NULL AND gr_c IS NOT NULL) THEN
                SELECT ev_id AS 'ID', user_name AS 'NAME', user_surname AS 'SURNAME', gr_a + gr_b + gr_c AS 'GRADE'; /*Εκτύπωση ολοκληρωμένων αξιολογήσεων*/                     
            END IF;
            FETCH gradeCursor1 INTO ev_id, user_name, user_surname, gr_a, gr_b, gr_c;
        END WHILE;
        CLOSE gradeCursor1; 
        SET gradeflag=0; /*Επαναφορά του flag για να χρησιμοποιηθεί στον gradeCursor2*/
        SELECT 'EVALUATIONS IN PROCESS';
        OPEN gradeCursor2;
        FETCH gradeCursor2 INTO ev_id, user_name, user_surname, gr_a, gr_b, gr_c;
        WHILE(gradeflag=0) DO
            IF (gr_a IS NULL OR gr_b IS NULL OR gr_c IS NULL) THEN            
                SELECT ev_id AS 'ID', user_name AS 'NAME', user_surname AS 'SURNAME', gr_a + gr_b + gr_c AS 'GRADE' /*Εκτύπωση αξιολογήσεων που εκκρεμούν*/
                ORDER BY ev_id ASC;
            END IF;
            FETCH gradeCursor2 INTO ev_id, user_name, user_surname, gr_a, gr_b, gr_c;
        END WHILE;
        CLOSE gradeCursor2;
        SELECT COUNT(*)  AS 'NUMBER OF EVALUATIONS IN PROCESS' FROM EVALUATION WHERE GRADE_A + GRADE_B + GRADE_C IS NULL; /*Εκτύπωση αριθμού αξιολογήσεων που εκκρεμούν*/
      
    END IF;
ELSE
  SELECT 'NO CANDIDATES FOR THIS POSITION'; /*Εκτύπωση σε περίπτωση που δεν υπάρχουν αξιολογήσεις για μία θέση εργασίας (eva_count=0)*/
END IF;
END$
DELIMITER ;

