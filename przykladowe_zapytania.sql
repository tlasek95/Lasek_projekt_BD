--Przykladowe zapytania SQL

-- wyswietlenie wszystkich zleceń napraw

SELECT
	s.id_zlecenia
	,z.data_przyjecia	
    ,k.Imie
	,k.Nazwisko				
	,n.Nazwa_naprawy
	,n.Cena
FROM
	dbo.SZCZEGOLY_NAPRAWY AS s
JOIN dbo.ZLECENIE_NAPRAWY AS z ON s.id_zlecenia = z.zlecenieID
JOIN dbo.KLIENT AS k ON z.id_klienta = k.klientID
JOIN dbo.NAPRAWA AS n ON s.id_naprawy = n.naprawaID

-- wyswietlenie tylko zakończonych prac

SELECT
	s.id_zlecenia
	,z.data_przyjecia
	,z.data_zakonczenia	
    ,k.Imie
	,k.Nazwisko				
	,n.Nazwa_naprawy
	,n.Cena
FROM
	dbo.SZCZEGOLY_NAPRAWY AS s

JOIN dbo.ZLECENIE_NAPRAWY AS z ON s.id_zlecenia = z.zlecenieID
JOIN dbo.KLIENT AS k ON z.id_klienta = k.klientID
JOIN dbo.NAPRAWA AS n ON s.id_naprawy = n.naprawaID
WHERE z.[ZAKONCZONE?] = 1

-- wyswietlenie należności za wszsytkie naprawy dla poszczególnych klientów

SELECT
     k.Imie
	,k.Nazwisko				
	,SUM (n.Cena) AS 'Całkowita cena naprawy'
FROM
	dbo.KLIENT AS k
JOIN dbo.ZLECENIE_NAPRAWY AS z ON k.klientID = z.id_klienta
JOIN dbo.SZCZEGOLY_NAPRAWY s ON z.zlecenieID = s.id_zlecenia
JOIN dbo.NAPRAWA AS n ON s.id_naprawy = n.naprawaID
GROUP BY Imie, Nazwisko

-- wyswietlenie pracowników oraz przypisanych im zleceń

SELECT
	 p.Imie_pracownika
	,p.Nazwisko_pracownika
	,z.zlecenieID AS 'Przypisane zlecenie'				

FROM
	dbo.PRACOWNIK AS p
LEFT OUTER JOIN  dbo.ZLECENIE_NAPRAWY AS z ON p.pracownikID = z.id_pracownika
ORDER BY Nazwisko_pracownika 

-- tworzenie nowego zlecenia dla istniejacego klienta (oraz jego wyswietlenie)

SET NOCOUNT ON
GO

INSERT [dbo].[ZLECENIE_NAPRAWY] ([data_przyjecia], [id_pojazdu], [id_pracownika], [id_klienta], [data_zakonczenia], [ZAKONCZONE?]) VALUES ('2020-06-17', 3, 7, 1, NULL, 0)
GO

SET IDENTITY_INSERT [dbo].[SZCZEGOLY_NAPRAWY] ON

INSERT [dbo].[SZCZEGOLY_NAPRAWY] ([id_zlecenia], [id_naprawy]) VALUES ((SELECT TOP 1 ([zlecenieID]) FROM [dbo].[ZLECENIE_NAPRAWY] ORDER BY zlecenieID DESC), 3)
GO
INSERT [dbo].[SZCZEGOLY_NAPRAWY] ([id_zlecenia], [id_naprawy]) VALUES ((SELECT TOP 1 ([zlecenieID]) FROM [dbo].[ZLECENIE_NAPRAWY] ORDER BY zlecenieID DESC), 9)
GO
INSERT [dbo].[SZCZEGOLY_NAPRAWY] ([id_zlecenia], [id_naprawy]) VALUES ((SELECT TOP 1 ([zlecenieID]) FROM [dbo].[ZLECENIE_NAPRAWY] ORDER BY zlecenieID DESC), 11)
GO

SET NOCOUNT OFF
GO

SELECT TOP 1 WITH TIES
	s.id_zlecenia
	,z.data_przyjecia	
    ,k.Imie
	,k.Nazwisko				
	,n.Nazwa_naprawy
	,n.Cena
FROM
	dbo.SZCZEGOLY_NAPRAWY AS s
JOIN dbo.ZLECENIE_NAPRAWY AS z ON s.id_zlecenia = z.zlecenieID
JOIN dbo.KLIENT AS k ON z.id_klienta = k.klientID
JOIN dbo.NAPRAWA AS n ON s.id_naprawy = n.naprawaID
ORDER BY s.id_zlecenia DESC
GO

-- trigger zmieniajacy status zlecenia po wpisaniu daty zakonczenia

CREATE TRIGGER TR_NAPRAWA_ZAKONCZONA

ON dbo.ZLECENIE_NAPRAWY 
AFTER UPDATE 
AS
  BEGIN
	IF UPDATE (data_zakonczenia)
		BEGIN
			UPDATE ZLECENIE_NAPRAWY
			SET [ZAKONCZONE?] = 1
			WHERE zlecenieID IN (SELECT zlecenieID FROM Inserted)

			PRINT 'Naprawa oznaczona jako zakonczona!'
		END
  END


-- test

UPDATE ZLECENIE_NAPRAWY
SET [data_zakonczenia] = '2026-06-21'
WHERE zlecenieID = 6
GO

-- wyswietlenie najdroższej naprawy

SELECT TOP 1
	Nazwa_naprawy
	,Cena 
FROM dbo.NAPRAWA ORDER BY Cena DESC

-- wyswietlenie ile zarobi dany pracownik (ilosc roboczogodzin * płaca za godzinę)

SELECT 
	 p.Imie_pracownika
	,p.Nazwisko_pracownika
	--,st.Zarobki_za_godzine
	--,z.zlecenieID
	--,s.id_naprawy	
	--,n.Nazwa_naprawy
	--,n.Ilosc_roboczogodzin
	,SUM (Zarobki_za_godzine * Ilosc_roboczogodzin) AS 'Zarobek pracownika'

FROM
	dbo.PRACOWNIK AS p
LEFT OUTER JOIN dbo.STANOWISKA AS st ON p.id_stanowiska = st.stanowiskoID
LEFT OUTER JOIN dbo.ZLECENIE_NAPRAWY as z ON z.id_pracownika = pracownikID
LEFT OUTER JOIN dbo.SZCZEGOLY_NAPRAWY as s ON z.zlecenieID = s.id_zlecenia
LEFT OUTER JOIN dbo.NAPRAWA AS n ON s.id_naprawy = n.naprawaID
GROUP BY Imie_pracownika, Nazwisko_pracownika

-- wyswietlenie rodzajow napraw i ich kategorii

SELECT
	 k.Nazwa_kategorii
	,n.Nazwa_naprawy
	,n.Cena

FROM
	dbo.KATEGORIA AS k

JOIN dbo.NAPRAWA AS n ON k.kategoriaID = n.id_kategorii

-- wysietlenie napraw ktorych koszt zawiera sie w przedziale 500-1500 zl

SELECT
	 k.Nazwa_kategorii
	,n.Nazwa_naprawy
	,n.Cena

FROM
	dbo.KATEGORIA AS k

JOIN dbo.NAPRAWA AS n ON k.kategoriaID = n.id_kategorii
WHERE n.Cena BETWEEN 500 AND 1500


