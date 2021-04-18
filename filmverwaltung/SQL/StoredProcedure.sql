use filmverwaltung;
DELIMITER $
CREATE PROCEDURE getFirstOrLastname(IN namen nvarchar(500))

BEGIN

	select
		firstname
        ,lastname
        ,filmtitel
        ,filmstudio
    from(
		select
			sp.firstname
			,sp.lastname
			,ft.filmtitel
			,fs.filmstudio
		from schauspieler sp
		join filmtitel_has_schauspieler fhs on fhs.idSchauspieler = sp.idSchauspieler
		join filmtitel ft on ft.idFilmtitel = fhs.idFilmtitel
		join filmstudio fs on fs.idFilmstudio = ft.idFilmstudio
		where sp.firstname like concat('%',namen,'%')

		union all

		select
			sp.firstname
			,sp.lastname
			,ft.filmtitel
			,fs.filmstudio
		from schauspieler sp
		join filmtitel_has_schauspieler fhs on fhs.idSchauspieler = sp.idSchauspieler
		join filmtitel ft on ft.idFilmtitel = fhs.idFilmtitel
		join filmstudio fs on fs.idFilmstudio = ft.idFilmstudio
		where sp.lastname like concat('%',namen,'%')
    ) film
    group by
		firstname
        ,lastname
        ,filmtitel
        ,filmstudio
	order by
		firstname asc
        ,lastname asc
        ,filmtitel asc;

END$

DELIMITER ;