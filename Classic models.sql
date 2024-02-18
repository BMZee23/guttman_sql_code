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

     use DBName;
     create login a_2 with password='Aa123';
     create user a_2 for login a_2;
     grant insert to a_2;
     grant select to a_2;
