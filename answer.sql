-- WEEK 8 ASSIGNMENT: MYSQL DATABASE BACKUP AND RESTORE
-- Database: sales

-- QUESTION 1: COMPLETE DATABASE BACKUP
--
-- Command (execute in PowerShell):
-- mysqldump -u root -p sales > sales_backup.sql
--
-- Explanation:
-- -u root specifies the MySQL username.
-- -p prompts for the database password.
-- sales specifies the database to back up.
-- The > operator saves the backup into sales_backup.sql.
--
-- This command exports the database structure and data.
-- Regular backups protect against accidental deletion,
-- hardware failure, corruption and data loss.


-- QUESTION 2: BACKUP OF ALL DATABASES
--
-- Command (execute in PowerShell):
-- mysqldump -u root -p --all-databases > all_databases_backup.sql
--
-- Explanation:
-- --all-databases exports all databases on the MySQL server.
-- -u root specifies the MySQL username.
-- -p prompts for the database password.
--
-- Backing up all databases before migration ensures that
-- information and database structures can be transferred
-- and restored on another server.


-- QUESTION 3: DATA-ONLY DATABASE BACKUP
--
-- Command (execute in PowerShell):
-- mysqldump -u root -p --no-create-info sales > sales_data_backup.sql
--
-- Explanation:
-- --no-create-info excludes CREATE TABLE statements.
-- This command exports records without exporting table
-- creation statements.
--
-- Data-only backups are useful when the destination database
-- already has the required table structures.