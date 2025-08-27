# SQL
SQL is a standard language for accessing and manipulating databases.

 ## What is SQL?
	SQL stands for Structured Query Language
	SQL lets you access and manipulate databases
	SQL became a standard of the American National Standards Institute (ANSI) in 1986, and of the International Organization for Standardization (ISO) in 1987
## SQL Syntax and Commonly used Commands

	To create a database use the syntax
	CREATE DATABASE databasename;
	To drop a database
	DROP DATABASE databasename;
	To create a table
	CREATE TABLE table_name (
		column1 datatype,
		column2 datatype,
		column3 datatype,
	....
	);

	SELECT - extracts data from a database
	UPDATE - updates data in a database
	DELETE - deletes data from a database
	INSERT INTO - inserts new data into a database
	CREATE DATABASE - creates a new database
	ALTER DATABASE - modifies a database
	CREATE TABLE - creates a new table
	ALTER TABLE - modifies a table
	DROP TABLE - deletes a table
	CREATE INDEX - creates an index (search key)
	DROP INDEX - deletes an index

## Nano Commands and Vi
Nano:
	Easy to use and master.
	Nano has most of the shortcuts listed at the bottom of the window, making it extremely simple to use.
	Search function.
	Search and replace.
	"Goto line" command.
	Automatic indentation.
Syntax:
Create and Open a New File in Nano Editor
```sh
   nano new_filename
```
Save a file in Nano Editor
```sh
   press Ctrl+o
```
Cut and Past in Nano Editor
To cut paste in a file. Ctrl+o is used to cut and Ctrl+u is used to paste the text.

Vim:
	Tough to get started with and master. The editing and command modes will confuse beginners.
	Session recovery.
	Split screen.
	Tab expansion.
	Completion commands.
	Syntax coloring.

Vi Syntax
How to Open VI Editor
To open vi editors, we just need to type the command mentioned below.
```sh
   vi [file_name]
```
How to insert in vi editor in Linux :
To enter in insert mode in vi editor in Linux we just need to press `i` on our keyboard and we will be in insert mode. we can just start entering our content. 

Moving within a File (Navigation) in Vi Editor : 
To move around within a file without affecting text must be in command mode (press Esc twice). 

Save and Exit in Vi Editor in Linux:
Need to press [Esc] key followed by the colon (:) before typing the following commands:

Commands 	Description
q          	     Quit
q!	            Quit without saving changes i.e. discard changes.
r [file_name]	Read data from file called [file_name]
wq	            Write and quit (save and exit).
w	            Write to file called [file_name] (save as).
w!	            Overwrite to file called [file_name] (save as forcefully).
!cmd	        Runs shell commands and returns to Command mode.