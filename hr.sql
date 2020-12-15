create table customer (
    custid varchar2(10) PRIMARY KEY,
    name varchar2(15),
    address varchar2(20),
    grade varchar2(15),
    mobile number
);  
drop table customer;


insert into customer(custid, name, address,grade,mobile) values('sd001', '전지현', '서울시','다이아몬드',01011112222);
insert into customer(custid, name, address,grade) values ('sg002', '장동건','성남시','골드');
insert into customer(custid, name, grade, mobile) values ('ss003', '이제니','다이아몬드', 01055556666);
insert into customer(custid, name, address) values ('sn004', '장동건','인천시');

select * from customer;

update customer set mobile = '01033334444' where custid = 'sd001';

update customer set address = '부산시' where custid = 'ss003';

delete from customer where custid = 'sn004';

alter table customer add POINT number;

alter table customer rename column grade to class;

update customer set class = 'D' where class = '다이아몬드';

alter table customer modify name varchar2(20);

alter table customer drop column address;

alter table customer modify mobile varchar2(10);

alter table customer modify grade varchar2(5);

insert into customer(custid, name, address, mobile) values ('sg002', '이제니','대전시',01077778888);