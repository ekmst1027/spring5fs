CREATE USER 'spring5'@'localhost' identified by 'spring5';

CREATE DATABASE spring5fs CHARACTER SET = utf8;

GRANT ALL PRIVILEGES ON spring5fs.* TO 'spring5'@'localhost';

ALTER USER 'spring5'@'localhost' IDENTIFIED WITH mysql_native_password BY 'spring5';

CREATE TABLE spring5fs.MEMBER (
	ID INT AUTO_INCREMENT PRIMARY KEY,
	EMAIL VARCHAR(255),
	PASSWORD VARCHAR(100),
	NAME VARCHAR(100),
	REGDATE DATETIME,
	UNIQUE KEY(EMAIL)
) ENGINE=INNODB CHARACTER SET = utf8;