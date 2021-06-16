
/*Procedures που είναι απαραίτητα για την λειτουργία του gui */

DELIMITER $ 
DROP PROCEDURE IF EXISTS average_grade_evaluator$ /*Υπολογισμός μέσου όρου βαθμολόγησης ενός αξιολογητή*/
CREATE PROCEDURE average_grade_evaluator(IN in_evaluator VARCHAR(12), OUT result FLOAT(5,3))
BEGIN
DECLARE ev_grade FLOAT(5,3);
DECLARE grade_sum FLOAT(5,3);
DECLARE i FLOAT(5,3);
DECLARE flagdone INT;
DECLARE averageCursor CURSOR FOR 
SELECT GRADE + 0.0 FROM EVALUATIONRESULT INNER JOIN JOB ON EVALUATIONRESULT.JOB_ID = JOB.ID INNER JOIN EVALUATOR ON JOB.EVALUATOR = EVALUATOR.USERNAME WHERE in_evaluator = USERNAME;
DECLARE CONTINUE HANDLER FOR NOT FOUND SET flagdone = 1;
OPEN averageCursor;
SET grade_sum = 0;
SET i = 0;
SET flagdone = 0;
FETCH averageCursor INTO ev_grade;
WHILE(flagdone = 0) DO
    SET grade_sum = grade_sum + ev_grade;
    SET i = i + 1;    
    SELECT ev_grade, grade_sum, i;
    FETCH averageCursor INTO ev_grade;
END WHILE;
CLOSE averageCursor;
SET result = grade_sum / i;

END$

DELIMITER ;


