--Trigger που ελέγχουμε αν το email είναι σε κατάλληλη μορφή
DELIMITER $ 
CREATE TRIGGER emailCheck
BEFORE UPDATE ON USERS
FOR EACH ROW
BEGIN
IF NEW.EMAIL  NOT LIKE '%@%.%' THEN
    SET NEW.email=OLD.email; 
    SIGNAL SQLSTATE VALUE '45000'
    SET MESSAGE_TEXT = 'New email not in correct form!';
END IF;
END$
DELIMITER ;
