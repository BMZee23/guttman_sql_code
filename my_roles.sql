-- DROP ROLES
DROP ROLE
IF EXISTS 'read_only_classicmodels_db'@'%';

-- CHECK TO SEE GONE
SELECT user, show_db_priv, account_locked
FROM mysql.user;

-- CREATE ROLE
CREATE ROLE
IF NOT EXISTS
     'read read_only_classicmodels_db', 'admin_user',
     'read read_only_employees_db', 'app_user';
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

-- GRANT PRIVILEGES
  GRANT SELECT
  ON classicmodels.*
  TO 'read_only_classicmodels_db'@'%';

  GRANT CREATE
  ON *.*
  TO 'admin_user'@'%';

  GRANT INSERT, UPDATE
  ON employees.employees
  TO 'app_user'@'%';

  GRANT SELECT
  ON employees.*
  TO 'read_only_employees_db'@'%';
