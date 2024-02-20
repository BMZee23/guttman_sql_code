-- DROP ROLES
DROP ROLE
IF EXISTS 'read_only_classicmodels_db'@'%';


-- CREATE ROLE
CREATE ROLE
IF NOT EXISTS
     'read_only_classicmodels_db', 'admin_user',
     'read_only_employees_db', 'app_user';


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
