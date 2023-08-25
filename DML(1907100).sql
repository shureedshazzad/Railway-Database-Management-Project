
set pagesize 100
set linesize 200

insert into station_info(station_id,station_name,location) values(1,'Airport Railway Station','Dhaka');
insert into station_info(station_id,station_name,location) values(2,'Tongi Railway Junction','Gazipur');
insert into station_info(station_id,station_name,location) values(3,'Akhaura Railway Junction','Brahmanbaria');
insert into station_info(station_id,station_name,location) values(4,'Sylhet Railway Station','Sylhet');
insert into station_info(station_id,station_name,location) values(5,'Lakhsham Railway Junction','Cumilla');
insert into station_info(station_id,station_name,location) values(6,'Chittagong Railway Station','Chittagong');
insert into station_info(station_id,station_name,location) values(7,'Khulna Railway Station','Khulna');
insert into station_info(station_id,station_name,location) values(8,'Ishwardi Railway Junction','Pabna');
insert into station_info(station_id,station_name,location) values(9,'Rajshahi Railway Station','Rajshahi');
insert into station_info(station_id,station_name,location) values(10,'Saidpur Railway Station','Nilphamari');



insert into train_info(train_id,train_name,train_type,destination_station_id,departure_time,arrival_time)values(1000,'Commuter-1','Commuter',1,'6:00 am','6:30 am');
insert into train_info(train_id,train_name,train_type,destination_station_id,departure_time,arrival_time)values(1001,'Commuter-2','Commuter',2,'6:00 am','6:50 am');
insert into train_info(train_id,train_name,train_type,destination_station_id,departure_time,arrival_time)values(1002,'Parabat Express','Inter-City',4,'7:00 am','2:00 pm');
insert into train_info(train_id,train_name,train_type,destination_station_id,departure_time,arrival_time)values(1003,'Sonar Bangla Express','Inter-City',6,'8:00 am','2:00 pm');
insert into train_info(train_id,train_name,train_type,destination_station_id,departure_time,arrival_time)values(1004,'Suborno Express','Inter-City',6,'3:30 pm','9:00 pm');
insert into train_info(train_id,train_name,train_type,destination_station_id,departure_time,arrival_time)values(1005,'Turna Express','Inter-City',6,'11:00 pm','6:00 am');
insert into train_info(train_id,train_name,train_type,destination_station_id,departure_time,arrival_time)values(1006,'Chittagong Mail Express','Mail-Train',6,'7.30 am','4:00 pm');
insert into train_info(train_id,train_name,train_type,destination_station_id,departure_time,arrival_time)values(1007,'Sundarban Express','Inter-City',7,'8:00 am','6:30 pm');
insert into train_info(train_id,train_name,train_type,destination_station_id,departure_time,arrival_time)values(1008,'Chittra Express','Inter-City',7,'10:00 pm','6:30 am');
insert into train_info(train_id,train_name,train_type,destination_station_id,departure_time,arrival_time)values(1009,'Bananlota Express','Inter-City',9,'7:00 am','12:30 pm');
insert into train_info(train_id,train_name,train_type,destination_station_id,departure_time,arrival_time)values(1010,'Silk City Express','Inter-City',9,'2:40 pm','8:00 pm');
insert into train_info(train_id,train_name,train_type,destination_station_id,departure_time,arrival_time)values(1011,'Nilsagar Express','Inter-City',10,'10:00 pm','7:00 am');


insert into passenger_info(passenger_id,first_name,middle_name,last_name,email,phone_number)values(1,'Shureed',NULL,'Shazzad','shureedshazzad534@gmail.com','01798052279');
insert into passenger_info(passenger_id,first_name,middle_name,last_name,email,phone_number)values(2,'Abdur',NULL,'Rahim',NULL,'01798042279');
insert into passenger_info(passenger_id,first_name,middle_name,last_name,email,phone_number)values(3,'Abdur','Rahman','Hridoy','hridoy@gmail.com','01898052279');
insert into passenger_info(passenger_id,first_name,middle_name,last_name,email,phone_number)values(4,'Shazzad',NULL,'Selim','shazzad@gmail.com','01816486565');
insert into passenger_info(passenger_id,first_name,middle_name,last_name,email,phone_number)values(5,'Shifat','Sharmin','Chowdhury','shifat@gmail.com','01716399615');
insert into passenger_info(passenger_id,first_name,middle_name,last_name,email,phone_number)values(6,'Tahamid',NULL,'Alam','tahmid@gmail.com','01516399615');
insert into passenger_info(passenger_id,first_name,middle_name,last_name,email,phone_number)values(7,'Abdul',NULL,'Jabbar',NULL,'01917865349');
insert into passenger_info(passenger_id,first_name,middle_name,last_name,email,phone_number)values(8,'Mohammad',NULL,'Harun','harun@gmail.com','01516825349');
insert into passenger_info(passenger_id,first_name,middle_name,last_name,email,phone_number)values(9,'Abul','Kalam','Azad',NULL,'01917865390');
insert into passenger_info(passenger_id,first_name,middle_name,last_name,email,phone_number)values(10,'Mohammad',NULL,'Naim','naim@gmail.com','01312655349');


insert into ticket_info(ticket_id,passenger_id,train_id,journey_date,destination_station_id,coach_number,coach_type,total_seats,seat_numbers,fare_amount)values(2471,1,1000,DATE '2023-4-17',1,'A','Shulov',1,'A-2',20);
insert into ticket_info(ticket_id,passenger_id,train_id,journey_date,destination_station_id,coach_number,coach_type,total_seats,seat_numbers,fare_amount)values(2472,2,1001,DATE '2023-4-17',2,'D','Shulov',1,'D-6',50);
insert into ticket_info(ticket_id,passenger_id,train_id,journey_date,destination_station_id,coach_number,coach_type,total_seats,seat_numbers,fare_amount)values(2473,3,1002,DATE '2023-4-17',3,'F','Shovon Chair',1,'F-3',200);
insert into ticket_info(ticket_id,passenger_id,train_id,journey_date,destination_station_id,coach_number,coach_type,total_seats,seat_numbers,fare_amount)values(2474,4,1002,DATE '2023-4-18',4,'B','Shovon Chair',1,'B-2',650);
insert into ticket_info(ticket_id,passenger_id,train_id,journey_date,destination_station_id,coach_number,coach_type,total_seats,seat_numbers,fare_amount)values(2475,5,1003,DATE '2023-4-19',6,'F','Shovon Chair',1,'F-2',600);
insert into ticket_info(ticket_id,passenger_id,train_id,journey_date,destination_station_id,coach_number,coach_type,total_seats,seat_numbers,fare_amount)values(2476,6,1003,DATE '2023-4-19',6,'A','Tapanokul Chaicoach',6,'A-2 A-3 A-4 A-5 A-6 A-7',5400);
insert into ticket_info(ticket_id,passenger_id,train_id,journey_date,destination_station_id,coach_number,coach_type,total_seats,seat_numbers,fare_amount)values(2477,7,1005,DATE '2023-4-20',5,'D','Tapanokul Chaicoach',4,'D-2 D-3 D-4 D-5',2800);
insert into ticket_info(ticket_id,passenger_id,train_id,journey_date,destination_station_id,coach_number,coach_type,total_seats,seat_numbers,fare_amount)values(2478,8,1005,DATE '2023-4-20',6,'E','Tapanokul Sleeper',4,'D-2 D-3 D-4 D-5',3600);
insert into ticket_info(ticket_id,passenger_id,train_id,journey_date,destination_station_id,coach_number,coach_type,total_seats,seat_numbers,fare_amount)values(2479,9,1007,DATE '2023-4-22',7,'H','First Class',4,'D-2 D-3 D-4 D-5',4400);
insert into ticket_info(ticket_id,passenger_id,train_id,journey_date,destination_station_id,coach_number,coach_type,total_seats,seat_numbers,fare_amount)values(2480,10,1008,DATE '2023-4-22',7,'H','Shovon Chair',4,'D-2 D-3 D-4 D-5',2700);




insert into route_info(route_id,train_id,route_name,final_destination_station_id)values(10001,1002,'Dhaka-Sylhet',4);
insert into route_info(route_id,train_id,route_name,final_destination_station_id)values(10002,1003,'Dhaka-Chittagong',6);
insert into route_info(route_id,train_id,route_name,final_destination_station_id)values(10002,1004,'Dhaka-Chittagong',6);
insert into route_info(route_id,train_id,route_name,final_destination_station_id)values(10002,1005,'Dhaka-Chittagong',6);
insert into route_info(route_id,train_id,route_name,final_destination_station_id)values(10002,1006,'Dhaka-Chittagong',6);
insert into route_info(route_id,train_id,route_name,final_destination_station_id)values(10003,1007,'Dhaka-Khulna',7);
insert into route_info(route_id,train_id,route_name,final_destination_station_id)values(10003,1008,'Dhaka-Khulna',7);
insert into route_info(route_id,train_id,route_name,final_destination_station_id)values(10004,1009,'Dhaka-Rajshahi',9);
insert into route_info(route_id,train_id,route_name,final_destination_station_id)values(10004,1010,'Dhaka-Rajshahi',9);
insert into route_info(route_id,train_id,route_name,final_destination_station_id)values(10005,1011,'Dhaka-Saidpur',10);




insert into train_schedule_info(route_id,train_id,running_days)values(10001,1002,'Saturday,Sunday,Monday,Tuesday,Wednesday,Thursday,Friday');
insert into train_schedule_info(route_id,train_id,running_days)values(10002,1003,'Saturday,Sunday,Monday,Tuesday,Wednesday,Friday');
insert into train_schedule_info(route_id,train_id,running_days)values(10002,1004,'Saturday,Sunday,Monday,Tuesday,Wednesday,Thursday,Friday');
insert into train_schedule_info(route_id,train_id,running_days)values(10002,1005,'Saturday,Sunday,Monday,Tuesday,Wednesday,Thursday,Friday');
insert into train_schedule_info(route_id,train_id,running_days)values(10002,1006,'Saturday,Sunday,Monday,Tuesday,Thursday,Friday');
insert into train_schedule_info(route_id,train_id,running_days)values(10003,1007,'Saturday,Sunday,Monday,Tuesday,Wednesday,Thursday');
insert into train_schedule_info(route_id,train_id,running_days)values(10003,1008,'Saturday,Monday,Tuesday,Wednesday,Thursday,Friday');
insert into train_schedule_info(route_id,train_id,running_days)values(10004,1009,'Saturday,Sunday,Monday,Tuesday,Wednesday,Thursday,Friday');
insert into train_schedule_info(route_id,train_id,running_days)values(10004,1010,'Sunday,Monday,Tuesday,Wednesday,Thursday,Friday');
insert into train_schedule_info(route_id,train_id,running_days)values(10005,1011,'Saturday,Sunday,Monday,Tuesday,Wednesday,Thursday,Friday');


insert into transaction_info(transaction_id,ticket_id,transaction_date,payment_method,transaction_amount)values(15001,2471,DATE '2023-4-5','Bkash',20);
insert into transaction_info(transaction_id,ticket_id,transaction_date,payment_method,transaction_amount)values(15002,2472,DATE '2023-4-5','Credit Card',50);
insert into transaction_info(transaction_id,ticket_id,transaction_date,payment_method,transaction_amount)values(15003,2473,DATE '2023-4-6','Rocket',200);
insert into transaction_info(transaction_id,ticket_id,transaction_date,payment_method,transaction_amount)values(15004,2474,DATE '2023-4-6','Bkash',650);
insert into transaction_info(transaction_id,ticket_id,transaction_date,payment_method,transaction_amount)values(15005,2475,DATE '2023-4-9','Bkash',600);
insert into transaction_info(transaction_id,ticket_id,transaction_date,payment_method,transaction_amount)values(15006,2476,DATE '2023-4-9','Nogod',5400);
insert into transaction_info(transaction_id,ticket_id,transaction_date,payment_method,transaction_amount)values(15007,2477,DATE '2023-4-9','Bkash',2800);
insert into transaction_info(transaction_id,ticket_id,transaction_date,payment_method,transaction_amount)values(15008,2478,DATE '2023-4-13','Credit Card',3600);
insert into transaction_info(transaction_id,ticket_id,transaction_date,payment_method,transaction_amount)values(15009,2479,DATE '2023-4-13','Rocket',4400);
insert into transaction_info(transaction_id,ticket_id,transaction_date,payment_method,transaction_amount)values(15010,2480,DATE '2023-4-17','Nogod',2700);

--find passenger_info from passenger_table using transaction_id in transaction_info
select first_name, phone_number from passenger_info where passenger_id in (select passenger_id from ticket_info where ticket_id in(select ticket_id from transaction_info where transaction_id=15001));



--find destination_station_info using amount in transaction_info
select station_name,location from station_info where station_id in (select destination_station_id from ticket_info where ticket_id in (select ticket_id from transaction_info where transaction_amount>50));



--update station_location
update station_info set location='Dinajpur' where station_id in (select destination_station_id from train_info where train_name='Nilsagar Express');



select *from station_info;



update station_info set location='Nilphamari' where station_id in (select destination_station_id from train_info where train_name='Nilsagar Express');



select *from station_info;




--deleteing a transaction
delete from transaction_info where ticket_id in(select ticket_id from ticket_info where passenger_id in(select passenger_id from passenger_info where phone_number='01798052279'));


select *from transaction_info;



--passenger info who are going to Sylhet or Chittagong
(select first_name from passenger_info where passenger_id in (select passenger_id from ticket_info where destination_station_id in(select station_id from station_info where location='Sylhet'))) union
(select first_name from passenger_info where passenger_id in (select passenger_id from ticket_info where destination_station_id in(select station_id from station_info where location='Chittagong')));




--passenger whose transaction_amount greater than average transaction
select *from passenger_info where passenger_id in(select passenger_id from ticket_info where ticket_id in(select ticket_id from transaction_info where transaction_amount>=(select avg(transaction_amount) from transaction_info)));



--transaction info group by date
select transaction_date,avg(transaction_amount) from transaction_info group by transaction_date having avg(transaction_amount)>=50;



--train which go to sylhet or chittagong from dhaka
 select train_name from train_info where train_id in(select train_id from route_info where route_name='Dhaka-Sylhet' or route_name='Dhaka-Chittagong');



--choosing transaction amount greater than 300
 select *from transaction_info where transaction_amount > some(select transaction_amount from transaction_info where transaction_amount>=300);
 select *from transaction_info where transaction_amount > all(select transaction_amount from transaction_info where transaction_amount>=300);


--string operation
 select  *from train_schedule_info where train_id in(select train_id from train_info where train_name like '%S%');


--join operation
select *from train_info join ticket_info on train_info.train_id=ticket_info.train_id
join route_info on ticket_info.train_id=route_info.train_id
join train_schedule_info on route_info.train_id=train_schedule_info.train_id;




--view 
create view station_location_detail as select station_name,location from station_info;
select *from station_location_detail;


--lab question
SELECT train_info.train_name, transaction_info.payment_method
FROM train_info
JOIN ticket_info ON train_info.train_id = ticket_info.train_id
JOIN transaction_info ON ticket_info.ticket_id = transaction_info.ticket_id;

















