create table if not exists district
(
	iddistrict serial not null primary key,
	districtname text not null,
	idparentdistrict int null references district(iddistrict),
	isarchived bool not null default(false)
);

create table if not exists job
(
	idjob serial not null primary key,
	jobname text not null,
	isarchived bool not null default(false)
);

create table if not exists employee
(
	idemployee serial not null primary key,
    lastname char varying(128) NULL,
	firstname  char varying(20) NULL,
	middlename  char varying(20) NULL,
	isarchived bool not null DEFAULT (false),
	iddistrict int null references district(iddistrict),
	idjob int null references job(idjob)
);

/*
drop table employee;
drop table job;
drop table district;
*/

select e.idemployee, e.lastname, e.firstname, e.middlename, e.isarchived, j.*, d.* from employee e
join job j on e.idjob = j.idjob
join district d on d.iddistrict = e.iddistrict
where j.isarchived;

insert into district
values(0, 'Управление', null, false);

insert into district
values(24, 'филиал Кулундинские МЭС', 0, false);

insert into district
values(25, 'филиал Алейские МЭС', 0, false);

insert into district
values(26, 'филиал Белокурихинские МЭС', 0, false);

insert into district
values(27, 'филиал Бийские МЭС', 0, false);

insert into district
values(28, 'филиал Змеиногорские МЭС', 0, false);

insert into district
values(29, 'филиал Каменские МЭС', 0, false);

insert into district
values(30, 'филиал Новоалтайские МЭС', 0, false);

insert into district
values(31, 'филиал Рубцовские МЭС', 0, false);

insert into district
values(32, 'филиал Славгородские МЭС', 0, false);

insert into district
values(112, 'Алейский РЭС', 25, false);

insert into district
values(113, 'Чарышский участок', 25, false);

insert into district
values(114, 'Мамонтовский участок', 25, false);

insert into district
values(115, 'Калманский участок', 25, false);

insert into district
values(116, 'Ребрихинский участок', 25, false);

insert into district
values(117, 'Романовский участок', 25, false);

insert into district
values(118, 'Топчихинский участок', 25, false);

insert into district
values(119, 'Усть-Пристанский участок', 25, false);

insert into district
values(120, 'Усть-Калманский участок', 25, false);

insert into district
values(121, 'Акутихинский участок', 27, false);

insert into district
values(122, 'Алтайский участок', 26, false);

insert into district
values(123, 'Белокурихинский участок', 26, false);

insert into district
values(124, 'Быстроистокский участок', 26, false);

insert into district
values(125, 'Петропавловский участок', 26, false);

insert into district
values(126, 'Смоленский участок', 26, false);

insert into district
values(127, 'Солонешенский участок', 26, false);

insert into district
values(128, 'Советский участок', 26, false);

insert into district
values(129, 'Целинный участок', 27, false);

insert into district
values(130, 'Ельцовский участок', 27, false);

insert into district
values(131, 'Красногорский участок', 27, false);

insert into district
values(132, 'Солтонский участок', 27, false);

insert into district
values(133, 'Зональный участок', 27, false);

insert into district
values(134, 'Баевский участок', 29, false);

insert into district
values(135, 'Каменский РЭС', 29, false);

insert into district
values(136, 'Крутихинский участок', 29, false);

insert into district
values(137, 'Панкрушихинский участок', 29, false);

insert into district
values(138, 'Шелаболихинский участок', 29, false);

insert into district
values(139, 'Тюменцевский участок', 29, false);

insert into district
values(140, 'Благовещенский участок', 24, false);

insert into district
values(141, 'Ключевской участок', 24, false);

insert into district
values(142, 'Кулундинский участок', 24, false);

insert into district
values(143, 'Михайловский участок', 24, false);

insert into district
values(144, 'Родинский участок', 24, false);

insert into district
values(145, 'участок Степное Озеро', 24, false);

insert into district
values(146, 'Табунский участок', 24, false);

insert into district
values(147, 'Завьяловский участок', 24, false);

insert into district
values(148, 'Косихинский РЭС', 30, false);

insert into district
values(149, 'Тальменский участок', 30, false);

insert into district
values(150, 'Троицкий РЭС', 30, false);

insert into district
values(151, 'Новоегорьевский участок', 31, false);

insert into district
values(152, 'Угловский участок', 31, false);

insert into district
values(153, 'Волчихинский участок', 31, false);

insert into district
values(154, 'Бурлинский участок', 32, false);

insert into district
values(155, 'Гальбштадтский участок', 32, false);

insert into district
values(156, 'Хабарский участок', 32, false);

insert into district
values(157, 'Славгородский участок', 32, false);

insert into district
values(158, 'Верх-Суетский участок', 32, false);

insert into district
values(159, 'Горняцкий участок', 28, false);

insert into district
values(160, 'Краснощековский участок', 28, false);

insert into district
values(161, 'Курьинский участок', 28, false);

insert into district
values(162, 'Староалейский участок', 28, false);

insert into district
values(163, 'Змеиногорский участок', 28, false);

insert into district
values(692, 'Новоалтайский РЭС', 30, false);

insert into district
values(1886, 'РЭС-1', 27, false);

insert into district
values(2060, 'Новичихинский участок', 31, false);

insert into district
values(2061, 'Рубцовский РЭС', 31, false);

insert into district
values(2062, 'Поспелихинский участок', 31, false);

insert into district
values(2063, 'Шипуновский участок', 31, false);

insert into district
values(2426, 'РЭС-2', 27, false);

insert into district
values(2451, 'РЭС-1 участок Сорокино', 27, true);

insert into district
values(2452, 'участок микрорайон АБ', 27, true);

insert into district
values(2454, 'Цемент', 30, false);

insert into district
values(2457, 'ОАО СК  Алтайкрайэнерго Филиал НМЭС', 0, true);

insert into district
values(2459, 'Тальменский РЭС', 30, true);

insert into job(jobname, isarchived)
values('Архивариус', false);

insert into job(jobname, isarchived)
values('Ведущий инженер-инспектор', false);

insert into job(jobname, isarchived)
values('Ведущий инженер', false);

insert into job(jobname, isarchived)
values('Мастер участка', false);

insert into job(jobname, isarchived)
values('Заместитель начальника отдела', false);

insert into job(jobname, isarchived)
values('Инженер инспектор', true);

insert into job(jobname, isarchived)
values('Инженер', false);

insert into job(jobname, isarchived)
values('Бригадир', false);

insert into job(jobname, isarchived)
values('Контролер', false);

insert into job(jobname, isarchived)
values('Мастер', false);

insert into job(jobname, isarchived)
values('И.о. начальника ОТЭ', false);

insert into job(jobname, isarchived)
values('Начальник отдела', false);

insert into job(jobname, isarchived)
values('Начальник участка', false);

insert into job(jobname, isarchived)
values('Ведущий специалист', false);

insert into job(jobname, isarchived)
values('Техник', false);

insert into job(jobname, isarchived)
values('Главный специалист по метрологии', false);

insert into job(jobname, isarchived)
values('эл.монтер', false);

insert into job(jobname, isarchived)
values('Заместитель генерального директора по правовому обеспечению', false);

insert into job(jobname, isarchived)
values('Фельдшер', false);

insert into job(jobname, isarchived)
values('Заместитель начальника департамента', false);

insert into job(jobname, isarchived)
values('Водитель автомобиля и машинист', false);

insert into job(jobname, isarchived)
values('машинист экскаватора', false);

insert into job(jobname, isarchived)
values('Ведущий специалист по энергосберегающей деятельности', false);

insert into job(jobname, isarchived)
values('Диспетчер', false);

insert into job(jobname, isarchived)
values('Инженер-программист', false);

insert into job(jobname, isarchived)
values('Машинист бурильно-крановой самоходной машины', false);

insert into job(jobname, isarchived)
values('Машинист крана автомобильного', false);

insert into job(jobname, isarchived)
values('Заместитель начальника отделения', false);

insert into job(jobname, isarchived)
values('Главный инженер', false);

insert into job(jobname, isarchived)
values('Заместитель генерального директора по энергосбытовой деятельности', false);


/*
СОТРУДНИКИ
*/


insert into employee(lastname, firstname, middlename, isarchived, iddistrict, idjob)
select 'Мельников', 'Юрий', 'Сергеевич', false, 29, j.idjob 
from job j
order by RANDOM() limit 1;

insert into employee(lastname, firstname, middlename, isarchived, iddistrict, idjob)
select 'Карнаухов', 'Сергей', 'Николаевич', false, 28, j.idjob 
from job j
order by RANDOM() limit 1;

insert into employee(lastname, firstname, middlename, isarchived, iddistrict, idjob)
select 'Байтанатова', 'Рыскен', 'Батталовна', false, 31, j.idjob 
from job j
order by RANDOM() limit 1;

insert into employee(lastname, firstname, middlename, isarchived, iddistrict, idjob)
select 'Лепилов', 'Евгений', 'Юрьевич', false, 31, j.idjob 
from job j
order by RANDOM() limit 1;

insert into employee(lastname, firstname, middlename, isarchived, iddistrict, idjob)
select 'Сичкарев', 'Евгений', 'Сергеевич', false, 24, j.idjob 
from job j
order by RANDOM() limit 1;

insert into employee(lastname, firstname, middlename, isarchived, iddistrict, idjob)
select 'Селиверстов', 'Алексей', 'Николаевич', false, 135, j.idjob 
from job j
order by RANDOM() limit 1;

insert into employee(lastname, firstname, middlename, isarchived, iddistrict, idjob)
select 'Кошевой', 'Владимир', ' ', false, 0, j.idjob 
from job j
order by RANDOM() limit 1;

insert into employee(lastname, firstname, middlename, isarchived, iddistrict, idjob)
select 'Вялков', 'Андрей', 'Александрович', true, 135, j.idjob 
from job j
order by RANDOM() limit 1;

insert into employee(lastname, firstname, middlename, isarchived, iddistrict, idjob)
select 'Кулигин', 'Сергей', 'Юрьевич', true, 27, j.idjob 
from job j
order by RANDOM() limit 1;

insert into employee(lastname, firstname, middlename, isarchived, iddistrict, idjob)
select 'Челпановский', 'Федор', 'Борисович', true, 2061, j.idjob 
from job j
order by RANDOM() limit 1;

insert into employee(lastname, firstname, middlename, isarchived, iddistrict, idjob)
select 'Широбоков', 'Артем', 'Александрович', false, 27, j.idjob 
from job j
order by RANDOM() limit 1;

insert into employee(lastname, firstname, middlename, isarchived, iddistrict, idjob)
select 'Козлов', 'Юрий', 'Григорьевич', false, 154, j.idjob 
from job j
order by RANDOM() limit 1;

insert into employee(lastname, firstname, middlename, isarchived, iddistrict, idjob)
select 'Майков', 'Александр', 'Владимирович', false, 26, j.idjob 
from job j
order by RANDOM() limit 1;

insert into employee(lastname, firstname, middlename, isarchived, iddistrict, idjob)
select 'Криволапов', 'Игорь', 'Валерьевич', false, 0, j.idjob 
from job j
order by RANDOM() limit 1;

insert into employee(lastname, firstname, middlename, isarchived, iddistrict, idjob)
select 'Капелюш', 'Анастасия', 'Игоревна', true, 0, j.idjob 
from job j
order by RANDOM() limit 1;

insert into employee(lastname, firstname, middlename, isarchived, iddistrict, idjob)
select 'Белкин', 'Юрий', 'Анатольевич', false, 30, j.idjob 
from job j
order by RANDOM() limit 1;

insert into employee(lastname, firstname, middlename, isarchived, iddistrict, idjob)
select 'Райзер', 'Виталий', 'Викторович', true, 30, j.idjob 
from job j
order by RANDOM() limit 1;

insert into employee(lastname, firstname, middlename, isarchived, iddistrict, idjob)
select 'Галанина', 'Ульяна', 'Андреевна', true, 0, j.idjob 
from job j
order by RANDOM() limit 1;

insert into employee(lastname, firstname, middlename, isarchived, iddistrict, idjob)
select 'Аксютина', 'Наталья', 'Владимировна', false, 128, j.idjob 
from job j
order by RANDOM() limit 1;

insert into employee(lastname, firstname, middlename, isarchived, iddistrict, idjob)
select 'Черепанова', 'Ирина', 'Сергеевна', false, 0, j.idjob 
from job j
order by RANDOM() limit 1;

insert into employee(lastname, firstname, middlename, isarchived, iddistrict, idjob)
select 'Масич', 'Елена', 'Владимировна', false, 26, j.idjob 
from job j
order by RANDOM() limit 1;

insert into employee(lastname, firstname, middlename, isarchived, iddistrict, idjob)
select 'Цыганков', 'Дмитрий', 'Сергеевич', false, 29, j.idjob 
from job j
order by RANDOM() limit 1;

insert into employee(lastname, firstname, middlename, isarchived, iddistrict, idjob)
select 'Зайцева', 'Татьяна', 'Иосифовна', false, 146, j.idjob 
from job j
order by RANDOM() limit 1;

insert into employee(lastname, firstname, middlename, isarchived, iddistrict, idjob)
select 'Филипповских', 'Роман', 'Вячеславович', false, 25, j.idjob 
from job j
order by RANDOM() limit 1;

insert into employee(lastname, firstname, middlename, isarchived, iddistrict, idjob)
select 'Лоскутов', 'Александр', 'Александрович', false, 2061, j.idjob 
from job j
order by RANDOM() limit 1;

insert into employee(lastname, firstname, middlename, isarchived, iddistrict, idjob)
select 'Чипугов', 'Александр ', 'Николаевич', true, 2061, j.idjob 
from job j
order by RANDOM() limit 1;

insert into employee(lastname, firstname, middlename, isarchived, iddistrict, idjob)
select 'Поляков', 'Евгений', 'Владимирович', false, 150, j.idjob 
from job j
order by RANDOM() limit 1;

insert into employee(lastname, firstname, middlename, isarchived, iddistrict, idjob)
select 'Родт', 'Дмитрий', 'Александрович', true, 30, j.idjob 
from job j
order by RANDOM() limit 1;

insert into employee(lastname, firstname, middlename, isarchived, iddistrict, idjob)
select 'Аксаментов', 'Юрий', 'Владимирович', false, 28, j.idjob 
from job j
order by RANDOM() limit 1;

insert into employee(lastname, firstname, middlename, isarchived, iddistrict, idjob)
select 'Гурьев', 'Сергей', 'Николаевич', false, 2061, j.idjob 
from job j
order by RANDOM() limit 1;

insert into employee(lastname, firstname, middlename, isarchived, iddistrict, idjob)
select 'Ледовских', 'Николай', 'Александрович', false, 25, j.idjob 
from job j
order by RANDOM() limit 1;

insert into employee(lastname, firstname, middlename, isarchived, iddistrict, idjob)
select 'Востриков', 'Роман', 'Андреевич', true, 30, j.idjob 
from job j
order by RANDOM() limit 1;

insert into employee(lastname, firstname, middlename, isarchived, iddistrict, idjob)
select 'Полухин', 'Иван', 'Сергеевич', false, 2061, j.idjob 
from job j
order by RANDOM() limit 1;

insert into employee(lastname, firstname, middlename, isarchived, iddistrict, idjob)
select 'Скворцова', 'Анастасия', 'Николаевна', true, 32, j.idjob 
from job j
order by RANDOM() limit 1;

insert into employee(lastname, firstname, middlename, isarchived, iddistrict, idjob)
select 'Гребенка', 'Ирина', 'Александровна', false, 32, j.idjob 
from job j
order by RANDOM() limit 1;

insert into employee(lastname, firstname, middlename, isarchived, iddistrict, idjob)
select 'Заречная', 'Валентина', 'Степановна', true, 142, j.idjob 
from job j
order by RANDOM() limit 1;

insert into employee(lastname, firstname, middlename, isarchived, iddistrict, idjob)
select 'Двухжилов', 'Юрий', 'Иванович', false, 28, j.idjob 
from job j
order by RANDOM() limit 1;

insert into employee(lastname, firstname, middlename, isarchived, iddistrict, idjob)
select 'Веречев', 'Алексей', 'Анатольевич', true, 30, j.idjob 
from job j
order by RANDOM() limit 1;

insert into employee(lastname, firstname, middlename, isarchived, iddistrict, idjob)
select 'Орлова', 'Татьяна', 'Владимировна', false, 29, j.idjob 
from job j
order by RANDOM() limit 1;

insert into employee(lastname, firstname, middlename, isarchived, iddistrict, idjob)
select 'Кунщиков', 'Евгений', 'Иванович', false, 31, j.idjob 
from job j
order by RANDOM() limit 1;

insert into employee(lastname, firstname, middlename, isarchived, iddistrict, idjob)
select 'Кофанова', 'Анастасия', 'Николаевна', false, 24, j.idjob 
from job j
order by RANDOM() limit 1;

insert into employee(lastname, firstname, middlename, isarchived, iddistrict, idjob)
select 'Овчарова', 'Елена', 'Сергеевна', true, 135, j.idjob 
from job j
order by RANDOM() limit 1;

insert into employee(lastname, firstname, middlename, isarchived, iddistrict, idjob)
select 'Деревнин', 'Сергей', 'Викторович', false, 123, j.idjob 
from job j
order by RANDOM() limit 1;

insert into employee(lastname, firstname, middlename, isarchived, iddistrict, idjob)
select 'Тихонова', 'Татьяна', 'Викторовна', false, 123, j.idjob 
from job j
order by RANDOM() limit 1;

insert into employee(lastname, firstname, middlename, isarchived, iddistrict, idjob)
select 'Коновалов', 'Виталий', 'Викторович', false, 32, j.idjob 
from job j
order by RANDOM() limit 1;

insert into employee(lastname, firstname, middlename, isarchived, iddistrict, idjob)
select 'Кандауров', 'Михаил', 'Александрович', false, 27, j.idjob 
from job j
order by RANDOM() limit 1;

insert into employee(lastname, firstname, middlename, isarchived, iddistrict, idjob)
select 'Иванов', 'Сергей', 'Владимирович', true, 112, j.idjob 
from job j
order by RANDOM() limit 1;

insert into employee(lastname, firstname, middlename, isarchived, iddistrict, idjob)
select 'Попова', 'Наталья', 'Викторовна', false, 123, j.idjob 
from job j
order by RANDOM() limit 1;

insert into employee(lastname, firstname, middlename, isarchived, iddistrict, idjob)
select 'Островских', 'Иван', 'Михайлович', true, 31, j.idjob 
from job j
order by RANDOM() limit 1;

insert into employee(lastname, firstname, middlename, isarchived, iddistrict, idjob)
select 'Гриднев', 'Михаил', 'Станиславович', false, 0, j.idjob 
from job j
order by RANDOM() limit 1;

insert into employee(lastname, firstname, middlename, isarchived, iddistrict, idjob)
select 'Усольцев', 'Сергей', 'Николаевич', false, 27, j.idjob 
from job j
order by RANDOM() limit 1;

insert into employee(lastname, firstname, middlename, isarchived, iddistrict, idjob)
select 'Колопельник', 'Елена', 'Петровна', false, 144, j.idjob 
from job j
order by RANDOM() limit 1;

insert into employee(lastname, firstname, middlename, isarchived, iddistrict, idjob)
select 'Винокурова', 'Анастасия', 'Алексеевна', true, 31, j.idjob 
from job j
order by RANDOM() limit 1;

insert into employee(lastname, firstname, middlename, isarchived, iddistrict, idjob)
select 'Семель', 'Евгений', 'Викторович', false, 149, j.idjob 
from job j
order by RANDOM() limit 1;

insert into employee(lastname, firstname, middlename, isarchived, iddistrict, idjob)
select 'Иванов', 'Юрий ', 'Михайлович', false, 32, j.idjob 
from job j
order by RANDOM() limit 1;

insert into employee(lastname, firstname, middlename, isarchived, iddistrict, idjob)
select 'Белозерских', 'Александр', 'Иванович', false, 123, j.idjob 
from job j
order by RANDOM() limit 1;

insert into employee(lastname, firstname, middlename, isarchived, iddistrict, idjob)
select 'Бадиков', 'Алексей', 'Анатольевич', false, 150, j.idjob 
from job j
order by RANDOM() limit 1;

insert into employee(lastname, firstname, middlename, isarchived, iddistrict, idjob)
select 'Клейменов', 'Андрей', 'Михайлович', false, 1886, j.idjob 
from job j
order by RANDOM() limit 1;

insert into employee(lastname, firstname, middlename, isarchived, iddistrict, idjob)
select 'Ларионова', 'Наталья', 'Вадимовна', false, 26, j.idjob 
from job j
order by RANDOM() limit 1;

insert into employee(lastname, firstname, middlename, isarchived, iddistrict, idjob)
select 'Донец', 'Ульяна', 'Петровна', false, 0, j.idjob 
from job j
order by RANDOM() limit 1;

insert into employee(lastname, firstname, middlename, isarchived, iddistrict, idjob)
select 'Литуева', 'Светлана', 'Александровна', true, 25, j.idjob 
from job j
order by RANDOM() limit 1;

insert into employee(lastname, firstname, middlename, isarchived, iddistrict, idjob)
select 'Грушевская', 'Наталья', 'Евгеньевна', false, 28, j.idjob 
from job j
order by RANDOM() limit 1;

insert into employee(lastname, firstname, middlename, isarchived, iddistrict, idjob)
select 'Воронина', 'Антонина', 'Петровна', true, 2061, j.idjob 
from job j
order by RANDOM() limit 1;

insert into employee(lastname, firstname, middlename, isarchived, iddistrict, idjob)
select 'Танаков', 'Кирилл', 'Андреевич', false, 163, j.idjob 
from job j
order by RANDOM() limit 1;

insert into employee(lastname, firstname, middlename, isarchived, iddistrict, idjob)
select 'Полынцев', 'Павел', 'Сергеевич', false, 32, j.idjob 
from job j
order by RANDOM() limit 1;

insert into employee(lastname, firstname, middlename, isarchived, iddistrict, idjob)
select 'Глушкова', 'Анна', 'Валерьевна', false, 0, j.idjob 
from job j
order by RANDOM() limit 1;

insert into employee(lastname, firstname, middlename, isarchived, iddistrict, idjob)
select 'Востриков', 'Константин', 'Викторович', true, 27, j.idjob 
from job j
order by RANDOM() limit 1;

insert into employee(lastname, firstname, middlename, isarchived, iddistrict, idjob)
select 'Попов', 'Сергей', 'Анатольевич', false, 114, j.idjob 
from job j
order by RANDOM() limit 1;

insert into employee(lastname, firstname, middlename, isarchived, iddistrict, idjob)
select 'Колесникова', 'Елена', 'Васильевна', true, 135, j.idjob 
from job j
order by RANDOM() limit 1;

insert into employee(lastname, firstname, middlename, isarchived, iddistrict, idjob)
select 'Покидов', 'Максим ', 'Алексеевич', true, 120, j.idjob 
from job j
order by RANDOM() limit 1;

insert into employee(lastname, firstname, middlename, isarchived, iddistrict, idjob)
select 'Додонов', 'Игорь', 'Борисович', true, 159, j.idjob 
from job j
order by RANDOM() limit 1;

insert into employee(lastname, firstname, middlename, isarchived, iddistrict, idjob)
select 'Раченков', 'александр', 'Юрьевич', true, 162, j.idjob 
from job j
order by RANDOM() limit 1;

insert into employee(lastname, firstname, middlename, isarchived, iddistrict, idjob)
select 'Меняйло', 'Сергей', 'Николаевич', false, 117, j.idjob 
from job j
order by RANDOM() limit 1;

insert into employee(lastname, firstname, middlename, isarchived, iddistrict, idjob)
select 'Кныш', 'Виталий', 'Николаевич', false, 30, j.idjob 
from job j
order by RANDOM() limit 1;

insert into employee(lastname, firstname, middlename, isarchived, iddistrict, idjob)
select 'Животиков', 'Иван', 'Сергеевич', false, 135, j.idjob 
from job j
order by RANDOM() limit 1;

insert into employee(lastname, firstname, middlename, isarchived, iddistrict, idjob)
select 'Фомин', 'Дмитрий', 'Сергеевич', false, 30, j.idjob 
from job j
order by RANDOM() limit 1;

insert into employee(lastname, firstname, middlename, isarchived, iddistrict, idjob)
select 'Гайст', 'Эдуард', 'Евгеньевич', false, 31, j.idjob 
from job j
order by RANDOM() limit 1;

insert into employee(lastname, firstname, middlename, isarchived, iddistrict, idjob)
select 'Казаков', 'Николай', 'Алексеевич', false, 27, j.idjob 
from job j
order by RANDOM() limit 1;

insert into employee(lastname, firstname, middlename, isarchived, iddistrict, idjob)
select 'Вальбрит', 'Галина', 'Петровна', true, 148, j.idjob 
from job j
order by RANDOM() limit 1;

insert into employee(lastname, firstname, middlename, isarchived, iddistrict, idjob)
select 'Гамалеева', 'Наталья', 'Владимировна', true, 162, j.idjob 
from job j
order by RANDOM() limit 1;

insert into employee(lastname, firstname, middlename, isarchived, iddistrict, idjob)
select 'Юмашева', 'Анастасия', 'Андреевна', false, 0, j.idjob 
from job j
order by RANDOM() limit 1;

insert into employee(lastname, firstname, middlename, isarchived, iddistrict, idjob)
select 'Гинц', 'Сергей', 'Анатольевич', true, 27, j.idjob 
from job j
order by RANDOM() limit 1;

insert into employee(lastname, firstname, middlename, isarchived, iddistrict, idjob)
select 'Балакирева', 'Анастасия', 'Евгеньевна', false, 153, j.idjob 
from job j
order by RANDOM() limit 1;

insert into employee(lastname, firstname, middlename, isarchived, iddistrict, idjob)
select 'Ситников', 'Владимир', 'Викторович', false, 31, j.idjob 
from job j
order by RANDOM() limit 1;

insert into employee(lastname, firstname, middlename, isarchived, iddistrict, idjob)
select 'Пащенко', 'Антон', 'Викторович', true, 2061, j.idjob 
from job j
order by RANDOM() limit 1;

insert into employee(lastname, firstname, middlename, isarchived, iddistrict, idjob)
select 'Малявко', 'Василий', 'Николаевич', false, 692, j.idjob 
from job j
order by RANDOM() limit 1;

insert into employee(lastname, firstname, middlename, isarchived, iddistrict, idjob)
select 'Шуликова', 'Светлана', 'Ивановна', false, 28, j.idjob 
from job j
order by RANDOM() limit 1;

insert into employee(lastname, firstname, middlename, isarchived, iddistrict, idjob)
select 'Стасюк', 'Александр', 'Сергеевич', true, 27, j.idjob 
from job j
order by RANDOM() limit 1;

insert into employee(lastname, firstname, middlename, isarchived, iddistrict, idjob)
select 'Купер', 'Дарья', 'Анатольевна', false, 31, j.idjob 
from job j
order by RANDOM() limit 1;

insert into employee(lastname, firstname, middlename, isarchived, iddistrict, idjob)
select 'Половинкин', 'Николай', 'Викторович', false, 26, j.idjob 
from job j
order by RANDOM() limit 1;

insert into employee(lastname, firstname, middlename, isarchived, iddistrict, idjob)
select 'Тарасов', 'Александр', 'Анатольевич', true, 0, j.idjob 
from job j
order by RANDOM() limit 1;

insert into employee(lastname, firstname, middlename, isarchived, iddistrict, idjob)
select 'Сазанович', 'Павел', 'Владимирович', false, 2060, j.idjob 
from job j
order by RANDOM() limit 1;

insert into employee(lastname, firstname, middlename, isarchived, iddistrict, idjob)
select 'Шубин', 'Михаил', 'Фёдорович', false, 26, j.idjob 
from job j
order by RANDOM() limit 1;

insert into employee(lastname, firstname, middlename, isarchived, iddistrict, idjob)
select 'Черкашина', 'Ирина', 'Сергеевна', false, 28, j.idjob 
from job j
order by RANDOM() limit 1;

insert into employee(lastname, firstname, middlename, isarchived, iddistrict, idjob)
select 'Жигало', 'Сергей', 'Вячеславович', false, 0, j.idjob 
from job j
order by RANDOM() limit 1;

insert into employee(lastname, firstname, middlename, isarchived, iddistrict, idjob)
select 'Слепокуров', 'Андрей', 'Витальевич', false, 2061, j.idjob 
from job j
order by RANDOM() limit 1;

insert into employee(lastname, firstname, middlename, isarchived, iddistrict, idjob)
select 'Мазанько', 'Наталья', 'Дмитриевна', true, 0, j.idjob 
from job j
order by RANDOM() limit 1;

insert into employee(lastname, firstname, middlename, isarchived, iddistrict, idjob)
select 'Ермошкин', 'Виктор', 'Викторович', false, 32, j.idjob 
from job j
order by RANDOM() limit 1;

insert into employee(lastname, firstname, middlename, isarchived, iddistrict, idjob)
select 'Екименко', 'Алена', 'Сергеевна', true, 140, j.idjob 
from job j
order by RANDOM() limit 1;
