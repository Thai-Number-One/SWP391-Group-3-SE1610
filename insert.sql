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
values (1,'ChildrenCare','FPT','0987654321','Admin@Gmail.com','1/1/2001','2/2/2001','Admin','12345','img/img_user/admin.jpg',1,1,1)
insert into [User]([User_ID],FullName,Address,Phone,Email,Date,Date_New,User_Name,Password,Avatar,Gender,Role_ID,Status)
values (2,N'Trịnh Đình Thái',N'Hà Nội','0987654321','ThaiTDHE153161@fpt.edu.vn','1/1/2001','1/1/2001','thai','12345','img/img_user/user1.jpg',1,3,1)
insert into [User]([User_ID],FullName,Address,Phone,Email,Date,Date_New,User_Name,Password,Avatar,Gender,Role_ID,Status)
values (3,N'Lê Minh Vũ',N'Hà Nội','0987654321','VuLMHE153202@fpt.edu.vn','1/1/2001','1/1/2001','vu123','12345','img/img_user/user2.jpg',1,3,1)
insert into [User]([User_ID],FullName,Address,Phone,Email,Date,Date_New,User_Name,Password,Avatar,Gender,Role_ID,Status)
values (4,N'Lê Hữu Đạt',N'Hải Phòng','0987654321','DatLHHE151375@fpt.edu.vn','1/1/2001','1/1/2001','dat1','12345','img/img_user/user3.jpg',1,2,1)
insert into [User]([User_ID],FullName,Address,Phone,Email,Date,Date_New,User_Name,Password,Avatar,Gender,Role_ID,Status)
values (5,N'Nguyễn Văn Cương',N'Bắc Ninh','0987654321','CuongNVHS150257@fpt.edu.vn','1/1/2001','1/1/2001','cuong','12345','img/img_user/user4.jpg',1,2,1)
insert into [User]([User_ID],FullName,Address,Phone,Email,Date,Date_New,User_Name,Password,Avatar,Gender,Role_ID,Status)
values (6,N'Phan Trọng Nhân',N'Hải Phòng','0987654321','NhanPTHE151206@fpt.edu.vn','1/1/2001','1/1/2001','nhan','12345','img/img_user/user5.jpg',1,4,1)
insert into [User]([User_ID],FullName,Address,Phone,Email,Date,Date_New,User_Name,Password,Avatar,Gender,Role_ID,Status)
values (7,N'Lương Văn Đại',N'Bắc Ninh','0987654321','Dailvhe151191@fpt.edu.vn','1/1/2001','1/1/2001','dai1','12345','img/img_user/user6.jpg',1,4,1)

insert into Reservation( Date,Status,Begin_Time,Total_cost)
values('5/28/2021',1,'2/24/2022',8495.615)
insert into Reservation( Date,Status,Begin_Time,Total_cost)
values('11/10/2021',1,'4/10/2022',8495.615)
insert into Reservation( Date,Status,Begin_Time,Total_cost)
values('10/24/2021',0,'1/5/2022',8495.615)
insert into Reservation( Date,Status,Begin_Time,Total_cost)
values('5/28/2021',0,'2/24/2022',8495.615)

insert into Service(Service_ID,Service_Name,Detail,Type,Image,Title,Price,Discount,Rate,Status)
values(1,'kham tong quat','kiem tra suc khoe, tim mach,v.v','S','image','suc khoe',200,20,4.5,1)
insert into Service(Service_ID,Service_Name,Detail,Type,Image,Title,Price,Discount,Rate,Status)
values(2,'kham tam ly','chuyen gia kiem tra tam ly cho tre','S','image','tinh than',300,20,5.0,0)
insert into Service(Service_ID,Service_Name,Detail,Type,Image,Title,Price,Discount,Rate,Status)
values(3,'tap luyen suc khoe','huan luyen vien day be cac bai tap nang cao suc khoe','S','image','suc khoe',250,20,4.5,1)


insert into Reservation_detail(Prescription_ID,Reservation_ID,Service_ID,User_ID,Staff_ID,Name_Sale,Children_Name,Age)
values(1,1,1,4,1,'sale 10%','con a',12)
insert into Reservation_detail(Prescription_ID,Reservation_ID,Service_ID,User_ID,Staff_ID,Name_Sale,Children_Name,Age)
values(2,2,2,6,2,'sale 10%','con a',12)
insert into Reservation_detail(Prescription_ID,Reservation_ID,Service_ID,User_ID,Staff_ID,Name_Sale,Children_Name,Age)
values(3,3,3,7,2,'sale 10%','con a',12)
insert into Reservation_detail(Prescription_ID,Reservation_ID,Service_ID,User_ID,Staff_ID,Name_Sale,Children_Name,Age)
values(4,4,1,5,3,'sale 10%','con a',12)


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
values(4,'good',1,4,'9/12/2021',1)
insert Feedback(User_ID,Detail,Feedback_status,Star,Date_Feedback,Reservation_ID)
values(5,'bad',0,3,'9/12/2021',2)
insert Feedback(User_ID,Detail,Feedback_status,Star,Date_Feedback,Reservation_ID)
values(6,'very good',1,2,'9/12/2021',3)
insert Feedback(User_ID,Detail,Feedback_status,Star,Date_Feedback,Reservation_ID)
values(7,'good look',1,1,'9/12/2021',4)
insert Feedback(User_ID,Detail,Feedback_status,Star,Date_Feedback,Reservation_ID)
values(4,'very bad',1,2,'9/12/2021',2)
insert Feedback(User_ID,Detail,Feedback_status,Star,Date_Feedback,Reservation_ID)
values(5,'well',0,5,'9/12/2021',2)

insert Post(Title,Content,User_ID,Image,Service_ID,Date,Status,Category)
values('cham soc suc khoe','Humans Homo sapiens are the most abundant and widespread species of primate, characterized by bipedalism and large, complex brains. aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',8,'anh-avatar-dep-cho-con-gai.jpg',1,'9/12/2021',1,'suc khoe')

insert Post(Title,Content,User_ID,Image,Service_ID,Date,Status,Category)
values('cham soc tam ly tre','tu van cham soc suc khoe',8,'anh-avatar-dep-cho-con-gai.jpg',2,'9/12/2021',1,'tam ly')
insert Post(Title,Content,User_ID,Image,Service_ID,Date,Status,Category)
values('cham soc co the tre','tu van cham soc suc khoe',8,'anh-avatar-dep-cho-con-gai.jpg',3,'9/12/2021',1,'suc khoe')
insert Post(Title,Content,User_ID,Image,Service_ID,Date,Status,Category)
values('huong dan tu kiem tra suc khoe tai nha','tu van cham soc suc khoe',8,'anh-avatar-dep-cho-con-gai.jpg',1,'9/12/2021',1,'huong dan')
