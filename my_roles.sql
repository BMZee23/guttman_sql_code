-- DROP ROLES
DROP ROLE
IF EXISTS 'read_only_classicmodels_db'@'%';


-- CREATE ROLE
CREATE ROLE
IF NOT EXISTS
     'read_only_classicmodels_db', 'admin_user',
     'read_only_employees_db', 'app_user';

<<<<<<< HEAD
=======
SELECT user, show_db_priv, account_locked
FROM mysql.user;

  FLUSH PRIVILEGES

>>>>>>> 46d075e3f94ac0bac21e21268d0c3bba9e918c7f

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
<<<<<<< HEAD
=======

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

FLUSH PRIVILEGES
>>>>>>> 46d075e3f94ac0bac21e21268d0c3bba9e918c7f
