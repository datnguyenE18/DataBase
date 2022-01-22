## Overview
Hoa quả được đặt tên (name), xác định loại (type), ngày chín (ripeness) và cân nặng (weight) 

![1](https://user-images.githubusercontent.com/43572616/150649134-82c4b4f6-b4a2-4424-8b2e-cf54951f1ba5.jpg)

## Table
Một bảng **fruits** liệt kê thông tin của từng trái cây, chuỗi cho type và name, float (hoặc số nguyên) cho weight, và ngày cho ripeness

![2](https://user-images.githubusercontent.com/43572616/150649308-3daf32ea-7f0b-40d7-8a50-72cccfe4382c.jpg)

## SELECT

**DISTINCT** được sử dụng kết hợp với câu lệnh SELECT để loại bỏ tất cả các bản ghi trùng lặp và chỉ lấy các bản ghi duy nhất trong bảng

VD: liệt kê tất cả các loại trái cây có trong bảng Fruits:

![3](https://user-images.githubusercontent.com/43572616/150649434-ea3240c7-333b-459e-aca0-d21f13949148.jpg)

## ORDER BY

**ORDER BY** sắp xếp dữ liệu theo thứ tự tăng dần hoặc theo thứ tự giảm dần trên một hoặc nhiều cột. Với 2 Options: 
* ASC - sắp xếp tăng dần
* DESC - sắp xếp giảm dần

VD:
![4](https://user-images.githubusercontent.com/43572616/150649523-91921182-96cf-4e09-903b-ef53a9bc5737.jpg)

* Bên trái: sắp xếp tất cả các trái cây trong bảng fruits theo cân nặng giảm dần
* Bên phải: sắp xếp tất cả các trái cây trong bảng fruits theo chiều tăng dần của Loại, nếu 2 trái cây cùng loại thì sắp xếp theo chiều giảm dần ngày chín

## WHERE

Liệt kê Tên, loại, cân nặng của các loại trái cây có thời gian chín trước ngày hôm nay:

![271728355_2365354180266499_3010059869564958196_n (1)](https://user-images.githubusercontent.com/43572616/150649678-aa0f4c46-7d19-4c5b-bcc8-b37a25c6aa73.jpg)

## ALIAS

**ALIASES** trong SQL được dùng để tạo tên tạm thời (gọi là bí danh) cho cột hoặc bảng

Ví dụ: Xem tất cả cân nặng của các trái cây (cột Weight) trong bảng fruits nhưng dưới một cột mới tên là Weight_in_g

![271803470_2365354150266502_8346651718015281278_n](https://user-images.githubusercontent.com/43572616/150649858-ffd3828c-6f1a-49e7-ad2c-c0ee388ddc6e.jpg)

## GROUP BY and HAVING

* GROUP BY trong SQL được sử dụng hợp tác với câu lệnh SELECT để sắp xếp dữ liệu giống nhau thành các nhóm. Mệnh đề GROUP BY này tuân theo mệnh đề WHERE trong câu lệnh SELECT và đứng trước mệnh đề ORDER BY.
* HAVING được dùng kết hợp với mệnh đề GROUP BY trong SQL Server (Transact-SQL) để giới hạn nhóm các hàng trả về, chỉ khi điều kiện được được đáp ứng là TRUE
* Hàm COUNT trong SQL Server dùng để đếm số lượng bản ghi (dữ liệu, hàng) có trong một bảng dữ liệu. Những giá trị NULL bỏ qua không tính.

VD: Trong bảng **fruits**, xem có loại trái cấy nào có số lượng trái cây < 3 không, trong đó cột type thỏa mãn điều kiện sẽ được in ra bên cạnh đó là cột amount chứa số lượng quả thuộc loại trái cây đó?

![271765471_2365354153599835_1652422773161863662_n](https://user-images.githubusercontent.com/43572616/150650718-a905ceac-c5b6-473a-83bb-c94b93186b26.jpg)

## CASE WHEN and DECLARE

* Câu lệnh **CASE** dùng để thiết lập điều kiện rẽ nhánh trong SQL Server, tương tự chức năng của câu lệnh IF-THEN-ELSE
* **DECLARE** dùng để khai báo biến (cú pháp: DECLARE @tên_biến kiểu_dữ_liệu;)

VD: Khai báo biến today có kiểu dữ liệu Date, lưu vào today giá trị là ngày hôm nay
Show cột name (các trái cây) và một cột bên cạnh tên là to_eat_or_not_to_eat để lưu hiện trạng của trái cây đó,
* Nếu trái cây chín trước ngày hôm nay (ripeness < today) thì "bad" - không nên ăn
* Nếu trái cây chín trong ngày hôm nay (ripeness = today) thì "eat now" - nên ăn ngay
* Nếu trái cây chưa chín (ripeness > today) thì "still time" - chưa nên ăn, chờ ít thời gian nữa đã

![271783547_2365354196933164_8069559751772850870_n](https://user-images.githubusercontent.com/43572616/150650909-901b0fbf-ce31-4f9e-843b-b1c7f6f12cdf.jpg)

## JOINs
Thêm bảm giá trị calo từng loại quả (calo/g):

![271802939_2365354190266498_4026752941476982594_n](https://user-images.githubusercontent.com/43572616/150652209-bf63d35f-a229-42db-b7e3-d8fc564c8bca.jpg)

* **INNER JOIN (Hoặc JOIN)**: loại kết nối phổ biến nhất, trả về tất cả các hàng từ các bảng khi điều kiện kết nối được đáp ứng
> SELECT cot
> 
>   FROM bang1
>   
>   INNER JOIN bang2
>   
>   ON bang1.cot = bang2.cot;

![image](https://user-images.githubusercontent.com/43572616/150652736-94621255-8d06-48ae-9640-ac2f5d401aa3.png)

Kết quả trả về là những bản ghi chung giữa bang1 và bang2
##
* **LEFT OUTER JOIN (Hoặc LEFT JOIN)**: trả về các hàng nằm ở bảng bên trái trong điều kiện ON và chỉ lấy ở các bảng còn lại những hàng đáp ứng được điều kiện đặt ra
> SELECT cot
> 
>   FROM bang1
>   
>   LEFT [OUTER] JOIN bang2
>   
>   ON bang1.cot = bang2.cot;
   
![image](https://user-images.githubusercontent.com/43572616/150652795-9ddab1f9-cdf1-4d37-b14e-35986e7cc9cf.png)

Kết quả trả về gồm bang1 và các bản ghi nằm trong bang2 giao với bang1 (vùng màu xanh trong hình).
##
* **RIGHT OUTER JOIN (Hoặc RIGHT JOIN)**: trả về các hàng nằm ở bảng bên phải trong điều kiện ON và chỉ lấy ở các bảng còn lại những hàng đáp ứng được điều kiện đặt ra
> SELECT cot
> 
>  FROM bang1
>  
>  RIGHT [OUTER] JOIN bang2
>  
>  ON bang1.cot = bang2.cot;

![image](https://user-images.githubusercontent.com/43572616/150652821-73135f9d-f505-4692-a4bd-de6f95122c66.png)

Kết quả trả về gồm bang2 và các bản ghi nằm trong bang1 giao với bang2 (vùng màu xanh trong hình)
##
* FULL OUTER JOIN (Hoặc OUTER JOIN): trả về tất cả các hàng nằm ở bảng trái và phải và giá trị NULL đặt ở những nơi không đáp ứng được điều kiện
> SELECT cot
> 
>  FROM bang1
>  
>  FULL [OUTER] JOIN bang2
>  
>  ON bang1.cot = bang2.cot;

![image](https://user-images.githubusercontent.com/43572616/150652836-51bda9c9-37f5-42ba-ba05-8744aedae6bc.png)

Kết quả trả về gồm tất cả bản ghi từ bang1 và bang2.
##
VD:Từ bản **fruits** và bảng **calories_table**, in ra các loại trái cây cùng giá trị calo / g của loại đó. Thêm vào đó 1 cột tổng lượng calo (calories) = cân nặng * giá trị calo

![271648809_2365354133599837_6465528783711679754_n](https://user-images.githubusercontent.com/43572616/150653023-5913f26f-44c5-44c0-ac6f-f79249b4897d.jpg)

##
![271721224_2365354113599839_5764872075153836810_n](https://user-images.githubusercontent.com/43572616/150653261-0dc43c1c-e346-43cb-92c1-75c90f4a9645.jpg)

![271733407_2365354123599838_925057737553284704_n](https://user-images.githubusercontent.com/43572616/150653262-f2105659-1b6e-4786-9eb9-e0fa9451d67a.jpg)
