






SELECT 'DROPPING USER admin_007' AS 'INSTALLATION STARTED';

DROP USER
IF EXISTS 'admin_007'@'%';

SELECT 'ADDING USER admin_007' AS 'INSTALLATION PROGRESSING';
CREATE USER
IF NOT EXISTS 'admin_007'@'%'
IDENTIFIED BY 'guttmanGrizzlies_2024'
FAILED_LOGIN_ATTEMPTS 4
PASSWORD_LOCK_TIME UNBOUNDED
PASSWORD EXPIRE INTERVAL 90 DAY
PASSWORD HISTORY 5
PASSWORD REUSE INTERVAL 365 DAY;

REVOKE ALL, GRANT OPTION FROM 'admin_007'@'%';

SELECT user, Show_db_priv, account_locked
FROM mysql.user;

GRANT SELECT ON classicmodels.*
TO 'admin_007'@'%';

SELECT 'ADDED USER admin_007' AS 'INSTALLATION COMPLETED';



SELECT 'DROPPING USER rt_user' AS 'INSTALLATION STARTED';

DROP USER
IF EXISTS 'rt_user'@'localhost';

SELECT 'ADDING USER rt_user' AS 'INSTALLATION PROGRESSING';

CREATE USER
IF NOT EXISTS 'rt_user'@'localhost'
IDENTIFIED BY 'super_secret_pswd_911';
FAILED_LOGIN_ATTEMPTS 0
PASSWORD_LOCK_TIME 0
PASSWORD EXPIRE INTERVAL 90 DAY
PASSWWORD HISTORY 5
PASSWORD REUSE INTERVAL 365 DAY;

REVOKE ALL, GRANT OPTION FROM 'rt_user'@'localhost';

GRANT ALL ON *.*
TO 'rt_user'@'localhost';

SELECT 'COMPLETED' AS 'INSTALLATION DONE';

SELECT user, host, show_db_priv, account_locked
FROM mysql.user;
FLUSH PRIVILEGES;




SELECT 'DROPPING USER brt_user' AS 'INSTALLATION STARTED';

DROP USER
IF EXISTS 'brt_user'@'localhost';

SELECT 'ADDING USER brt_user' AS 'INSTALLATION PROGRESSING';

CREATE USER
IF NOT EXISTS 'brt_user'@'localhost'
IDENTIFIED BY 'super_secret_pswd_911'
FAILED_LOGIN_ATTEMPTS 0
PASSWORD_LOCK_TIME 0
PASSWORD EXPIRE INTERVAL 90 DAY
PASSWORD HISTORY 5
PASSWORD REUSE INTERVAL 365 DAY;

REVOKE ALL, GRANT OPTION FROM 'brt_user'@'localhost';

GRANT ALL ON *.*
TO 'brt_user'@'localhost';

SELECT 'COMPLETED' AS 'INSTALLATION DONE';
FLUSH PRIVILEGES;

SELECT user, host, show_db_priv, account_locked
FROM mysql.user;


FLUSH PRIVILEGES


-- create rt_user
-- check if rt_user exists and drop if it does
SELECT 'DROPPING USER rt_user' AS 'INSTALLATION STARTED';

DROP USER IF EXISTS 'rt_user'@'localhost';

SELECT 'ADDING USER rt_user' AS 'INSTALLATION PROGRESSING';

CREATE USER 'rt_user'@'localhost'
IDENTIFIED BY 'super_secret_password_911'
PASSWORD EXPIRE INTERVAL 90 DAY
PASSWORD HISTORY 5
PASSWORD REUSE INTERVAL 365 DAY
FAILED_LOGIN_ATTEMPTS 0
PASSWORD_LOCK_TIME 0;

-- revoke all privileges and grant option from 'rt_user'@'localhost'
REVOKE ALL, GRANT OPTION FROM 'rt_user'@'localhost';

-- grant ALL privileges on *.* to 'rt_user'@'localhost'
GRANT ALL ON *.* TO 'rt_user'@'localhost';

-- select specific columns from mysql.user table
SELECT user, show_db_priv, account_locked
FROM mysql.user;

-- return informational message that indicates completion of user addition
SELECT 'Completed adding rt_user' AS 'INSTALLATION DONE';

-- flush privileges to ensure changes take effect immediately
FLUSH PRIVILEGES;
