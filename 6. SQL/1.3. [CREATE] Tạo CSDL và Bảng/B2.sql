/*
Tạo bảng EMP chứa các trường được mô tả dưới đây với các mô tả như sau:
+ Cột emp_id có thể dài 4 chữ số, không có số thập phân.
+ Cột emp_name có thể lưu trữ bất kỳ ký tự nào, tối đa 10 ký tự.
+ Cột hire_date sẽ chấp nhận bất kỳ ngày nào, nhưng nếu giá trị không được cung cấp, giá trị mặc định là ngày hiện tại.
+ Cột salary mô tả mức lương của nhân viên, sẽ chấp nhận các giá trị số có tối đa 7 chữ số. Nếu số chữ số lớn hơn 7 và nằm bên phải dấu thập phân, số sẽ được làm tròn.
+ Cột comm (tỉ lệ hoa hồng) có giá trị mặc định là 0,03
*/

CREATE DATABASE B2; 
USE
    B2;
CREATE TABLE EMP(
    emp_id INT,
    emp_name VARCHAR(10),
    hire_date DATE DEFAULT CURRENT_DATE,
    salary DECIMAL(7, 2),
    comm DECIMAL(7, 2) DEFAULT 0.03
);