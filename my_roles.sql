-- DROP ROLES
DROP ROLE
IF EXISTS 'READ_ONLY_CLASSICMODELS_DB'@'%';

-- CHECK TO SEE GONE
SELECT user, show_db_priv, account_locked
FROM mysql.user;

-- CREATE ROLE
CREATE ROLE
IF NOT EXISTS
     'READ_ONLY_CLASSICMODELS_DB', 'admin_user',
     'READ_ONLY_ EMPLOYEES_DB', 'app_user';
  FLUSH PRIVILEGES
-- GRANT PRIVILEGES
GRANT SELECT
ON classicmodels.*
to 'read_only_classicmodels_db'@'%';

GRANT CREATE, DROP
ON employees.*
TO 'admin_user'@'%';

GRANT CREATE, DROP
ON classicmodels.*
TO 'admin_user'@'%';

GRANT SHOW DATABASES
ON *.*
TO 'admin_user'@'%';

GRANT INSERT, UPDATE
ON employees.employees
TO 'app_user'@'%';

GRANT SELECT
ON employees.*
TO 'read_only_employees_db'@'%';

SELECT user, show_db_priv,account_locked
FROM mysql.user;

-- CREATE ROLES
SELECT 'CREATING ROLES' AS 'INSTALLATION PROGRESSING';
GRANT 'admin_007' TO 'admin_006';

GRANT 'read_only_classicmodels_db' to 'admin_001', 'admin_003';

GRANT 'read_only_employees_db' to 'admin_002'; 'admin_004';

GRANT 'app_user' TO 'admin_006';

GRANT 'admin_user' TO 'admin_005';
FLUSH PRIVILIEGE
