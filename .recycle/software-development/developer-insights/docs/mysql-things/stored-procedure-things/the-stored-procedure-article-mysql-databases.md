# The Stored Procedure Article

## Define The Delimeter for the stored procedure

DELIMITER //  

## Drop The Stored Procedure If It Exists

DROP PROCEDURE IF EXISTS foo //

## Select // minimal

just runs a select statement.

DELIMITER $$

CREATE PROCEDURE foo()
BEGIN
select 'derp' as 'msg';
END $$

CALL foo()$$  

## Select // minimal

just runs a select statement.

DELIMITER $$

CREATE PROCEDURE foo()
BEGIN
select 'derp' as 'msg';
END $$

CALL foo()$$  


## Advanced For Later

DELIMITER //  

DROP PROCEDURE IF EXISTS ABC //

CREATE PROCEDURE ABC()

   BEGIN
      SET @a = 0;
      simple_loop: LOOP
         SET @a=@a+1;
         select @a;
         IF @a=5 THEN
            LEAVE simple_loop;
         END IF;
   END LOOP simple_loop;
END //