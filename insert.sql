use TestProject4


insert into Role (Role_ID,Role_Name)
values(1,'admin')
insert into Role (Role_ID,Role_Name)
values(2,'staff')
insert into Role (Role_ID,Role_Name)
values(3,'Manager')
insert into Role (Role_ID,Role_Name)
values(4,'Customer')

insert into [User]([User_ID],FullName,Address,Phone,Email,Date,Date_New,User_Name,Password,Avatar,Gender,Role_ID,Status)
values (1,'nguyen van yen','hai phong','0987654321','email@email.com','2/2/1990','2/2/1990','zreo','12356','anh-avatar-dep-cho-con-gai.jpg',1,2,1)
insert into [User]([User_ID],FullName,Address,Phone,Email,Date,Date_New,User_Name,Password,Avatar,Gender,Role_ID,Status)
values (2,'le thi an','hai noi','0987654321','email@email.com','9/12/1989','9/12/1989','asdf','12356','anh-avatar-dep-cho-con-gai.jpg',0,2,1)
insert into [User]([User_ID],FullName,Address,Phone,Email,Date,Date_New,User_Name,Password,Avatar,Gender,Role_ID,Status)
values (3,'tran tat kiet','hai duong','0987654321','email@email.com','7/5/1992','9/12/1989','zrzx','12356','anh-avatar-dep-cho-con-gai.jpg',1,2,1)
insert into [User]([User_ID],FullName,Address,Phone,Email,Date,Date_New,User_Name,Password,Avatar,Gender,Role_ID,Status)
values (4,'Dinh kim oanh','hai duong','0987654321','email@email.com','7/5/1992','9/12/1989','zrzx','12356','anh-avatar-dep-cho-con-gai.jpg',0,4,1)
insert into [User]([User_ID],FullName,Address,Phone,Email,Date,Date_New,User_Name,Password,Avatar,Gender,Role_ID,Status)
values (5,'nguyen van anh','hai phong','0987654321','email@email.com','2/2/1990','9/12/1989','zreo','12356','anh-avatar-dep-cho-con-gai.jpg',1,4,1)
insert into [User]([User_ID],FullName,Address,Phone,Email,Date,Date_New,User_Name,Password,Avatar,Gender,Role_ID,Status)
values (6,'le thi binh','hai noi','0987654321','email@email.com','9/12/1989','9/12/1989','asdf','12356','anh-avatar-dep-cho-con-gai.jpg',0,4,1)
insert into [User]([User_ID],FullName,Address,Phone,Email,Date,Date_New,User_Name,Password,Avatar,Gender,Role_ID,Status)
values (7,'tran tat kiet','hai duong','0987654321','email@email.com','7/5/1992','9/12/1989','zrzx','12356','anh-avatar-dep-cho-con-gai.jpg',1,4,1)
insert into [User]([User_ID],FullName,Address,Phone,Email,Date,Date_New,User_Name,Password,Avatar,Gender,Role_ID,Status)
values (8,'Nguyen van toan','hai duong','0987654321','email@email.com','7/5/1992','9/12/1989','zrzx','12356','anh-avatar-dep-cho-con-gai.jpg',1,3,1)

insert into Reservation( User_ID,Staff_ID,Date,Status,Begin_Time,Total_cost)
values(4,1,'5/28/2021','wait','2/24/2022',8495.615)
insert into Reservation( User_ID,Staff_ID,Date,Status,Begin_Time,Total_cost)
values(5,2,'11/10/2021','wait','4/10/2022',8495.615)
insert into Reservation( User_ID,Staff_ID,Date,Status,Begin_Time,Total_cost)
values(6,3,'10/24/2021','being','1/5/2022',8495.615)
insert into Reservation( User_ID,Staff_ID,Date,Status,Begin_Time,Total_cost)
values(7,1,'5/28/2021','wait','2/24/2022',8495.615)

insert into Service(Service_ID,Service_Name,Detail,Type,Image,Title,Price,Discount,Rate,Status)
values(1,'kham tong quat','kiem tra suc khoe, tim mach,v.v','S','image','suc khoe',200,20,4.5,'good')
insert into Service(Service_ID,Service_Name,Detail,Type,Image,Title,Price,Discount,Rate,Status)
values(2,'kham tam ly','chuyen gia kiem tra tam ly cho tre','S','image','tinh than',300,20,5.0,'good')
insert into Service(Service_ID,Service_Name,Detail,Type,Image,Title,Price,Discount,Rate,Status)
values(3,'tap luyen suc khoe','huan luyen vien day be cac bai tap nang cao suc khoe','S','image','suc khoe',250,20,4.5,'well')


insert into Reservation_detail(Prescription_ID,Reservation_ID,Service_ID,User_ID,Name_Sale)
values(1,1,1,4,null)
insert into Reservation_detail(Prescription_ID,Reservation_ID,Service_ID,User_ID,Name_Sale)
values(2,2,2,6,null)
insert into Reservation_detail(Prescription_ID,Reservation_ID,Service_ID,User_ID,Name_Sale)
values(3,3,3,7,null)
insert into Reservation_detail(Prescription_ID,Reservation_ID,Service_ID,User_ID,Name_Sale)
values(4,4,1,5,null)


insert Medicine(Medicine_ID,Medicine_name,Price,country,Expiry_date,Detail,Image)
values(1,'thuoc bo',99,'my','9/12/2025','tang cuong suc khoe','image')
insert Medicine(Medicine_ID,Medicine_name,Price,country,Expiry_date,Detail,Image)
values(2,'thuoc an than',79,'duc','9/12/2025','lam diu tinh than','image')
insert Medicine(Medicine_ID,Medicine_name,Price,country,Expiry_date,Detail,Image)
values(3,'thuoc chong viem',99,'and','9/12/2025','khang viem cho tre','image')

insert Prescription(Prescription_ID,User_ID,Medicine_ID,Amount,Note)
values(1,4,1,2,'NO');
insert Prescription(Prescription_ID,User_ID,Medicine_ID,Amount,Note)
values(2,6,3,1,'NO');
insert Prescription(Prescription_ID,User_ID,Medicine_ID,Amount,Note)
values(3,7,1,3,'NO');
insert Prescription(Prescription_ID,User_ID,Medicine_ID,Amount,Note)
values(4,5,1,3,'NO');


insert Feedback(User_ID,Detail,Feedback_status,Star,Date_Feedback,Reservation_ID)
values(4,'good','view',4,'9/12/2021',1)
insert Feedback(User_ID,Detail,Feedback_status,Star,Date_Feedback,Reservation_ID)
values(5,'bad','hide',3,'9/12/2021',2)
insert Feedback(User_ID,Detail,Feedback_status,Star,Date_Feedback,Reservation_ID)
values(6,'very good','view',2,'9/12/2021',3)
insert Feedback(User_ID,Detail,Feedback_status,Star,Date_Feedback,Reservation_ID)
values(7,'good look','view',1,'9/12/2021',4)
insert Feedback(User_ID,Detail,Feedback_status,Star,Date_Feedback,Reservation_ID)
values(4,'very bad','view',2,'9/12/2021',2)
insert Feedback(User_ID,Detail,Feedback_status,Star,Date_Feedback,Reservation_ID)
values(5,'well','hide',5,'9/12/2021',2)

insert Post(Title,Content,User_ID,Image,Service_ID,Date,Status,Category)
values('cham soc suc khoe','tu van cham soc suc khoe',8,'anh-avatar-dep-cho-con-gai.jpg',1,'9/12/2021',1,'suc khoe')
insert Post(Title,Content,User_ID,Image,Service_ID,Date,Status,Category)
values('cham soc tam ly tre','tu van cham soc suc khoe',8,'anh-avatar-dep-cho-con-gai.jpg',2,'9/12/2021',1,'tam ly')
insert Post(Title,Content,User_ID,Image,Service_ID,Date,Status,Category)
values('cham soc co the tre','tu van cham soc suc khoe',8,'anh-avatar-dep-cho-con-gai.jpg',3,'9/12/2021',1,'suc khoe')
insert Post(Title,Content,User_ID,Image,Service_ID,Date,Status,Category)
values('huong dan tu kiem tra suc khoe tai nha','tu van cham soc suc khoe',8,'anh-avatar-dep-cho-con-gai.jpg',1,'9/12/2021',1,'huong dan')

