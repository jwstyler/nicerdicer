use filmverwaltung;

select *
from filmtitel
order by launchDate;

select
	ft.filmtitel
    ,date_format(ft.launchDate, '%d.%m.%Y') as launchDate
    -- ,ft.launchDate
    ,fs.filmstudio
from filmstudio fs
join filmtitel ft on ft.idFilmstudio = fs.idFilmstudio
where fs.filmstudio like '%%'
order by ft.launchDate asc;

call getFirstOrLastname('i');

select
	firstname
    ,lastname
from schauspieler
where firstname like '%i%'

union all

select
	firstname
    ,lastname
from schauspieler
where lastname like '%i%';
