
--Создать таблицу employees
--id. serial,  primary key,
--employee_name. Varchar(50), not null
--Наполнить таблицу employee 70 строками.

create table employees(
	id serial primary key,
	employee_name Varchar(50) not null

);
insert into employees(employee_name)
values 
	('Абрам'),	('Авдей'),	('Аггей'),	('Азамат'),	('Алан'),	('Альберт'),	('Амвросий'),	('Ангел'),	('Арам'),	('Арно'),	('Арслан'),	('Аскар'),	('Ашот'),	('Бернард'),	('Бронислав'),	('Вальтер'),	('Венедикт'),	('Вильгельм'),	('Владислав'),	('Вячеслав'),	('Гаяс'),	('Геракл'),	('Гордей'),	('Гурий'),	('Даниэль'),	('Демосфен'),	('Дмитрий'),	('Евгений'),	('Евстафий'),	('Еремей'),	('Жан'),	('Ибрагим'),	('Ильдар'),	('Иннокентий'),	('Ислам'),	('Клим'),	('Лавр'),	('Леонтий'),	('Макар'),	('Марсель'),	('Митрофан'),	('Мурат'),	('Натан'),	('Никифор'),	('Овидий'),	('Орест'),	('Платон'),	('Радомир'),	('Ратмир'),	('Ричард'),	('Ростислав'),	('Савва'),	('Святослав'),	('Соломон'),	('Стефан'),	('Тарас'),	('Тихон'),	('Фарид'),	('Фердинанд'),	('Флорентий'),	('Харитон'),	('Шамиль'),	('Эмиль'),	('Эрнест'),	('Юхим'),	('Яромир'),	('Эмин'),	('Юлиан'),	('Яким'),	('Ярослав');

--Создать таблицу salary
--id. Serial  primary key,
--monthly_salary. Int, not null
--Наполнить таблицу salary 15 строками:

create table salary(
	id Serial  primary key,
	monthly_salary Int not null
);
insert into salary(monthly_salary)
values 
	(1000),
	(1100),
	(1200),
	(1300),
	(1400),
	(1500),
	(1600),
	(1700),
	(1800),
	(1900),
	(2000),
	(2100),
	(2200),
	(2300),
	(2400),
	(2500);

--Создать таблицу employee_salary
--id. Serial  primary key,
--employee_id. Int, not null, unique
--salary_id. Int, not null
--Наполнить таблицу employee_salary 40 строками:
--в 10 строк из 40 вставить несуществующие employee_id

create table employee_salary(
	id Serial  primary key,
	employee_id Int not null unique,
    salary_id Int not null
);

insert into employee_salary(employee_id,salary_id)
values 
	(1,18),
	(2,19),
	(3,20),
	(4,25),
	(5,35),
	(6,36),
	(7,38),
	(8,39),
	(9,16),
	(10,15),
	(11,22),
	(12,24),
	(13,7),
	(14,6),
	(15,17),
	(16,12),
	(17,13),
	(18,11),
	(19,48),
	(20,46),
	(21,45),
	(22,44),
	(23,56),
	(24,54),
	(25,55),
	(26,64),
	(27,66),
	(28,65),
	(29,69),
	(30,70),
	(31,98),
	(32,99),
	(33,93),
	(34,94),
	(35,95),
	(36,196),
	(37,197),
	(38,198),
	(39,199),
	(40,200);

--Создать таблицу roles
--id. Serial  primary key,
--role_name. int, not null, unique
--Поменять тип столба role_name с int на varchar(30)
--Наполнить таблицу roles 20 строками:

create table roles(
	id Serial  primary key,
	role_name int not null unique
);
alter table roles 
alter column role_name type varchar(30);

insert into roles(role_name)
values 
	('Junior Python developer'),
	('Middle Python developer'),
	('Senior Python developer'),
	('Junior Java developer'),
	('Middle Java developer'),
	('Senior Java developer'),
	('Junior JavaScript developer'),
	('Middle JavaScript developer'),
	('Senior JavaScript developer'),
	('Junior Manual QA engineer'),
	('Middle Manual QA engineer'),
	('Senior Manual QA engineer'),
	('Project Manager'),
	('Designer'),
	('HR'),
	('CEO'),
	('Sales manager'),
	('Junior Automation QA engineer'),
	('Middle Automation QA engineer'),
	('Senior Automation QA engineer');

--Создать таблицу roles_employee
--id. Serial  primary key,
--employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
--role_id. Int, not null (внешний ключ для таблицы roles, поле id)
--Наполнить таблицу roles_employee 40 строками:

create table roles_employee(
	id Serial  primary key,
	employee_id Int not null unique, 
	role_id Int not null,
	
foreign key (employee_id)
	references employees(id),
foreign key (role_id)
	references roles(id)
);
insert into roles_employee(employee_id,role_id)
values 
	(18,28),
	(17,12),
	(19,11),
	(15,5),
	(53,4),
	(3,60),
	(2,61),
	(56,62),
	(29,63),
	(24,70),
	(31,1),
	(33,6),
	(49,8),
	(48,9),
	(44,16),
	(52,22),
	(54,66),
	(55,65),
	(68,64),
	(67,69),
	(69,67),
	(64,68),
	(65,55),
	(66,54),
	(22,52),
	(16,44),
	(9,48),
	(8,49),
	(6,33),
	(1,31),
	(70,24),
	(63,29),
	(62,56),
	(61,2),
	(60,3),
	(4,53),
	(5,15),
	(11,19),
	(12,17),
	(28,18);
