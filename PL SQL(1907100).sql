
--print station information using pl/sql
set serveroutput on
declare
station_name station_info.station_name%type;
location station_info.location%type;
begin
select station_name,location into station_name,location from station_info where station_id in(select destination_station_id  from ticket_info where passenger_id 
in (select passenger_id from passenger_info where first_name='Shureed'));
dbms_output.put_line('Station Name: '||station_name||' Loaction Name: '||location);
end;
/



--insert info using pl/sql
set serveroutput on 
declare
station_id station_info.station_id%type:=11;
station_name station_info.station_name%type:='Bhoirob Bazar';
location station_info.location%type:='Kishorgonj';
begin
insert into station_info values(station_id,station_name,location);
end;
/

--print station information using pl/sql
set serveroutput on
declare 
station_row station_info%rowtype;
begin
select station_name,location into station_row.station_name,station_row.location from station_info where station_id=1;
dbms_output.put_line('Station Name: '||station_row.station_name||' Loaction Name: '||station_row.location);
end;
/

--using cursor and loop to see passenger_info
set serveroutput on
declare
cursor passenger_info_cursor is select * from passenger_info;
passenger_row passenger_info%rowtype;
begin
open passenger_info_cursor;
fetch passenger_info_cursor into passenger_row.passenger_id,passenger_row.first_name,passenger_row.middle_name,passenger_row.last_name,passenger_row.email,passenger_row.phone_number;
while passenger_info_cursor%found loop
dbms_output.put_line(passenger_row.passenger_id ||' ' || passenger_row.first_name || passenger_row.middle_name || passenger_row.last_name || passenger_row.email || passenger_row.phone_number);
fetch passenger_info_cursor into passenger_row.passenger_id,passenger_row.first_name,passenger_row.middle_name,passenger_row.last_name,passenger_row.email,passenger_row.phone_number;
end loop;
close passenger_info_cursor;
end;
/


--use of cursor,loop and array
set serveroutput on
declare
cursor coach_cursor is select coach_type from ticket_info;
counter NUMBER:=0;
coach_type ticket_info.coach_type%type;
type array is varray(10) of ticket_info.coach_type%type;
myarray array:=array();
Begin
open coach_cursor;
counter:=0;
fetch coach_cursor into coach_type;
while coach_cursor%found loop
counter:=counter+1;
myarray.extend();
myarray(counter):=coach_type;
fetch coach_cursor into coach_type;
end loop;
close coach_cursor;
counter:=1;
while counter<=myarray.count
loop
if (myarray(counter)='Shulov') or (myarray(counter)='Shovon Chair') then
dbms_output.put_line(myarray(counter) ||' is non luxarious compartment');
else
dbms_output.put_line(myarray(counter) || ' is luxarious compartment');
end if;
counter:=counter+1;
end loop;
end;
/

--procedure
set serveroutput on
CREATE OR REPLACE PROCEDURE proc(
var1 in NUMBER,
var2 in NUMBER
)
As
name varchar(20);
res number;
Begin
res:=var2/var1;
select first_name into name from passenger_info where passenger_id in(select passenger_id from ticket_info where total_seats=var1 and fare_amount=var2);
DBMS_OUTPUT.PUT_LINE(name || ' spends '|| res ||'tk for per seat');
 NULL;
END;
/
set serveroutput on
declare
cursor info_cursor is select total_seats,fare_amount from ticket_info;
total_seats ticket_info.total_seats%type;
fare_amount ticket_info.fare_amount%type;
begin
open info_cursor;
fetch info_cursor into total_seats,fare_amount;
while info_cursor%found loop
proc(total_seats,fare_amount);
fetch info_cursor into total_seats,fare_amount;
end loop;
close info_cursor;
end;
/

drop procedure proc;


--function

CREATE OR REPLACE function func(var1 in number,var2 in number) return NUMBER as
value number;
begin
value:=var2/var1;
return value;
end;
/

set serveroutput on
declare
cursor info_cursor is select total_seats,fare_amount from ticket_info;
seats ticket_info.total_seats%type;
amount ticket_info.fare_amount%type;
res number;
name varchar(20);
begin
open info_cursor;
fetch info_cursor into seats,amount;
while info_cursor%found loop
select first_name into name from passenger_info where passenger_id in(select passenger_id from ticket_info where total_seats=seats and fare_amount=amount);
res:=func(seats,amount);
DBMS_OUTPUT.PUT_LINE(name || ' spends '|| res ||'tk for per seat');
fetch info_cursor into seats,amount;
end loop;
close info_cursor;
end;
/
















