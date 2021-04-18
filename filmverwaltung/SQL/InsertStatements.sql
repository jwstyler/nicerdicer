use filmverwaltung;

insert into filmstudio
(
	filmstudio
)
values
('Bavaria Filmstudios')
,('Great American Films')
,('Touchstones Pictures')
,('Warner Brothers Pictures');

insert into filmtitel
(
	filmtitel
    ,launchDate
    ,idFilmstudio
)
values
('Dirty Dancing','1987-08-21',2)
,('Sister Act','1992-05-29',3)
,('Harry Potter u. der Stein der Weisen','2001-11-23',4)
,('Casanova','2006-02-09',3)
,('Die unendliche Geschichte','1984-05-20',1)
,('Die Welle','2008-03-13',1)
,('Krieg in Chinatown','1987-09-25',2)
,('I Am Legend','2008-01-10',4)
,('Transcendence','2014-04-18',4);

insert into country
(
	country
)
values
('Austria')
,('Germany')
,('USA')
,('Hungary');

insert into schauspieler
(
	firstname
    ,lastname
    ,country_idCountry
)
values
('Alina','Test',1)
,('Max','Huber',2)
,('Toni','Frei',4)
,('Jeff','Hobs',1)
,('Lucas','Thiem',3)
,('Arni','Super',3);

insert into filmtitel_has_schauspieler
(
	idFilmtitel
    ,idSchauspieler
)
values
(3001,1)
,(3001,3)
,(3001,4)
,(3003,5)
,(3003,4)
,(3002,5)
,(3001,5)
,(3004,3)
,(3004,2)
,(3004,5);




