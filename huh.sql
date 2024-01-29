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
