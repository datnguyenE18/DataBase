/*Tạo một bảng mới có tên account có các cột sau với các kiểu dữ liệu tương ứng:
user_id – SERIAL
username – VARCHAR(50)
password – VARCHAR(50)
email – VARCHAR(355)
created_on – DATE với mặc định là ngày hiện tại
last_login – TIMESTAMP*/

CREATE DATABASE B1; /*Tạo cơ sở dữ liệu*/
USE
    B1;
CREATE TABLE account(	/*Tạo bảng account*/
    user_id INT(10) PRIMARY KEY AUTO_INCREMENT,	/*Giống SERIAL trong PostgreSQL*/
    username VARCHAR(50),
    PASSWORD VARCHAR(50),
    email VARCHAR(355),
    created_on DATE DEFAULT CURRENT_DATE,
    last_login TIMESTAMP
);