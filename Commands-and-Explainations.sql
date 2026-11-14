-- ============================================================
-- Question 1: Creating a Complete Database Backup
-- ============================================================

mysqldump -u root -p sales > sales_backup.sql

-- Explanation of the command:
-- * mysqldump: The MySQL command-line utility used to generate logical database backups.
-- * -u root: Connects to the MySQL server using the 'root' username.
-- * -p: Prompts the administrator to securely enter the root user's password.
-- * sales: Specifies the exact database ('sales') to export (both structure and data).
-- * > sales_backup.sql: Redirects the SQL dump output into a file named 'sales_backup.sql'.
--
-- Importance of regular database backups:
-- Regular backups protect critical business data against accidental deletion, 
-- data corruption, hardware failure, or cyberattacks. They ensure rapid recovery 
-- with minimal data loss before making major schema or application changes.


-- ============================================================
-- Question 2: Backing Up All Databases
-- ============================================================

mysqldump -u root -p --all-databases > all_databases_backup.sql

-- Explanation of the command:
-- * mysqldump: Invokes the MySQL backup utility.
-- * -u root -p: Authenticates as 'root' and prompts for the password.
-- * --all-databases: Exports every database on the MySQL server, including system 
--   databases (such as mysql and sys) containing user accounts and privileges.
-- * > all_databases_backup.sql: Saves the complete server dump to 'all_databases_backup.sql'.
--
-- Importance of backing up all databases before a server migration:
-- Backing up all databases ensures that no application database, stored procedure, 
-- or system user permission is left behind during migration. It also provides a 
-- reliable rollback point so the entire server environment can be restored cleanly 
-- if anything fails on the new server.
