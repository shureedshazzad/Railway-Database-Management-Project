






create table station_info(
station_id NUMBER(20),
station_name varchar(40) UNIQUE not null,
location varchar(40) not null,
primary key(station_id),
CONSTRAINT positive_1 CHECK (station_id > 0)
);





create table train_info(
train_id NUMBER(20),
train_name varchar(40) UNIQUE not null,
train_type varchar(40) not null,
destination_station_id NUMBER(20) not null, 
departure_time varchar(20) not null,
arrival_time varchar(20) not null,
primary key(train_id),
CONSTRAINT positive_2 CHECK (train_id > 0),
foreign key(destination_station_id) references station_info(station_id)
on delete cascade
);






create table passenger_info
(
passenger_id NUMBER(20),
first_name varchar(20) not null,
middle_name varchar(20),
last_name varchar(20) not null,
email varchar(40) NULL UNIQUE,
phone_number varchar(20) UNIQUE not null,
primary key(passenger_id),
CONSTRAINT chk_length CHECK (length(phone_number)=11), 
CONSTRAINT positive_3 CHECK (passenger_id> 0)
);


create table ticket_info
(
ticket_id NUMBER(20),
passenger_id NUMBER(20) UNIQUE not null,
train_id NUMBER(20) not null,
journey_date date not null,
destination_station_id NUMBER(20) not null,
coach_number varchar(20) not null,
coach_type varchar(20) not null,
total_seats NUMBER(20) not null,
seat_numbers varchar(40) not null,
fare_amount NUMBER(20) not null CONSTRAINT ck_non_negative_amount CHECK (fare_amount > 0),
primary key(ticket_id),
CONSTRAINT positive_4 CHECK (ticket_id> 0),
CONSTRAINT seat CHECK (total_seats<=36),
foreign key(train_id) references train_info(train_id)
on delete cascade,
foreign key(passenger_id) references passenger_info(passenger_id)
on delete cascade,
foreign key(destination_station_id) references station_info(station_id)
on delete cascade
);




create table route_info(
route_id NUMBER(20) CONSTRAINT positive_5 CHECK (route_id > 0),
train_id NUMBER(20),
route_name varchar(40) not null,
station_id_to NUMBER(20) not null,
primary key(route_id,train_id),
foreign key(train_id) references train_info(train_id)
on delete cascade,
foreign key(station_id_to) references station_info(station_id)
on delete cascade
);

alter table route_info rename column station_id_to to final_destination_station_id;




create table train_schedule_info(
route_id NUMBER(20),
train_id NUMBER(20),
running_days varchar(40) not null,
primary key(route_id,train_id),
CONSTRAINT fk
foreign key(route_id,train_id) references route_info(route_id,train_id)
on delete cascade
);

alter table train_schedule_info modify running_days varchar(100);





create table transaction_info(
transaction_id NUMBER(20) CONSTRAINT positive_6 CHECK(transaction_id>0),
ticket_id NUMBER(20) UNIQUE not null,
transaction_date date not null,
payment_method varchar(40) not null,
transaction_amount NUMBER(20) not null CONSTRAINT non_negative_amount CHECK (transaction_amount> 0),
primary key(transaction_id),
foreign key(ticket_id) references ticket_info(ticket_id)
on delete cascade
);


select table_name from user_tables;
alter table transaction_info add location varchar(40);
alter table transaction_info drop column location; 
















