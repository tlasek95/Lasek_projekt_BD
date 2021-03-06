-- WYPEŁNIENIE STWORZONYCH TABEL PRZYKŁADOWYMI WARTOŚCIAMI

USE Lasek_projekt_BD																		-- przełączenie kontekstu bazy danych na Lasek_projekt_BD
GO

SET NOCOUNT ON

-- dane do tabeli DOSTAWCY
SET IDENTITY_INSERT [dbo].[DOSTAWCY] ON 

GO
INSERT [dbo].[DOSTAWCY] ([dostawcaID], [Nazwa_firmy], [Adres], [Miasto], [Kraj], [Email], [Poczatek_wspolpracy]) VALUES (1, N'Januszex', N'ul. Jagodowa 14a', N'Wrocław', N'Polska', N'januszex@gmail.com', '1995-11-09')  
GO
INSERT [dbo].[DOSTAWCY] ([dostawcaID], [Nazwa_firmy], [Adres], [Miasto], [Kraj], [Email], [Poczatek_wspolpracy]) VALUES (2, N'AutoPOL', N'ul. Piłsudzkiego 14', N'Wrocław', N'Polska', N'AtuoPol@gmail.com', '1995-12-24')  
GO
INSERT [dbo].[DOSTAWCY] ([dostawcaID], [Nazwa_firmy], [Adres], [Miasto], [Kraj], [Email], [Poczatek_wspolpracy]) VALUES (3, N'CzesciZamienne', N'ul. Pomidorowa 20', N'Kraków', N'Polska', N'czescil@gmail.com', '1999-05-13')  
GO
INSERT [dbo].[DOSTAWCY] ([dostawcaID], [Nazwa_firmy], [Adres], [Miasto], [Kraj], [Email], [Poczatek_wspolpracy]) VALUES (4, N'DASauto', N'HoffenStrasse 23', N'Berlin', N'Niemcy', N'DasAutp@gmail.de', '2011-05-11')  
GO
INSERT [dbo].[DOSTAWCY] ([dostawcaID], [Nazwa_firmy], [Adres], [Miasto], [Kraj], [Email], [Poczatek_wspolpracy]) VALUES (5, N'TheCarParts', N'25 Warwick Street ', N'York', N'Wielka Brytania', N'caaars@gmail.uk', '2012-10-16')  
GO
INSERT [dbo].[DOSTAWCY] ([dostawcaID], [Nazwa_firmy], [Adres], [Miasto], [Kraj], [Email], [Poczatek_wspolpracy]) VALUES (6, N'MechanikaPL', N'ul. Krakowska 36', N'Poznań', N'Polska', N'mechanika@gmail.com', '2013-10-24')  
GO
INSERT [dbo].[DOSTAWCY] ([dostawcaID], [Nazwa_firmy], [Adres], [Miasto], [Kraj], [Email], [Poczatek_wspolpracy]) VALUES (7, N'Autoczesci', N'ul. Brzeska 49/11', N'Wrocław', N'Polska', N'autoczesci@gmail.com', '2019-06-11')  

SET IDENTITY_INSERT [dbo].[DOSTAWCY] OFF 
GO

-- dane do tabeli KATEGORIA
SET IDENTITY_INSERT [dbo].[KATEGORIA] ON 

GO
INSERT [dbo].[KATEGORIA] ([kategoriaID], [Nazwa_kategorii], [Opis]) VALUES (1, N'Serwis zerowy', N'Serwis po zakupie samochodu')
GO
INSERT [dbo].[KATEGORIA] ([kategoriaID], [Nazwa_kategorii], [Opis]) VALUES (2, N'Blacharka', N'Naprawy związane z poszyciem samochodu')
GO
INSERT [dbo].[KATEGORIA] ([kategoriaID], [Nazwa_kategorii], [Opis]) VALUES (3, N'Nadwozie', N'Naprawy związane z nadwoziem samochodu')
GO
INSERT [dbo].[KATEGORIA] ([kategoriaID], [Nazwa_kategorii], [Opis]) VALUES (4, N'Podwozie', N'Naprawy związane z podwoziem samochodu')
GO
INSERT [dbo].[KATEGORIA] ([kategoriaID], [Nazwa_kategorii], [Opis]) VALUES (5, N'Napęd', N'Naprawy związane napędem samochodu')

SET IDENTITY_INSERT [dbo].[KATEGORIA] OFF 
GO

-- dane do tabeli NAPRAWA

SET IDENTITY_INSERT [dbo].[NAPRAWA] ON 

GO
INSERT [dbo].[NAPRAWA] ([naprawaID], [Nazwa_naprawy], [Cena], [id_kategorii], [id_dostawcy], [Ilosc_roboczogodzin]) VALUES (1, N'Wymiana wszsytkich filtrów', 300, 1, 1, N'2')  
GO
INSERT [dbo].[NAPRAWA] ([naprawaID], [Nazwa_naprawy], [Cena], [id_kategorii], [id_dostawcy], [Ilosc_roboczogodzin]) VALUES (2, N'Wymiana oleju', 100, 1, 2, N'1') 
GO
INSERT [dbo].[NAPRAWA] ([naprawaID], [Nazwa_naprawy], [Cena], [id_kategorii], [id_dostawcy], [Ilosc_roboczogodzin]) VALUES (3, N'Wymiana klocków hamulcowych', 200, 1, 2, N'2') 
GO
INSERT [dbo].[NAPRAWA] ([naprawaID], [Nazwa_naprawy], [Cena], [id_kategorii], [id_dostawcy], [Ilosc_roboczogodzin]) VALUES (4, N'Naprawa wgnieceń na masce lub dachu', 400, 2, 3, N'5')   
GO
INSERT [dbo].[NAPRAWA] ([naprawaID], [Nazwa_naprawy], [Cena], [id_kategorii], [id_dostawcy], [Ilosc_roboczogodzin]) VALUES (5, N'Naprawa skorodowanych nadkoli lub błotników', 500, 2, 3, N'6') 
GO
INSERT [dbo].[NAPRAWA] ([naprawaID], [Nazwa_naprawy], [Cena], [id_kategorii], [id_dostawcy], [Ilosc_roboczogodzin]) VALUES (6, N'Naprawa wgnieceń na drzwiach', 385, 2, 4, N'6')    
GO
INSERT [dbo].[NAPRAWA] ([naprawaID], [Nazwa_naprawy], [Cena], [id_kategorii], [id_dostawcy], [Ilosc_roboczogodzin]) VALUES (7, N'Wymiana zderzaków', 600, 3, 4, N'5')  
GO
INSERT [dbo].[NAPRAWA] ([naprawaID], [Nazwa_naprawy], [Cena], [id_kategorii], [id_dostawcy], [Ilosc_roboczogodzin]) VALUES (8, N'Wymiana lamp przednich lub tylnych', 256, 3, 4, N'4')  
GO
INSERT [dbo].[NAPRAWA] ([naprawaID], [Nazwa_naprawy], [Cena], [id_kategorii], [id_dostawcy], [Ilosc_roboczogodzin]) VALUES (9, N'Wymiana szyby przedniej lub tylnej', 1100, 3, 4, N'15')  
GO
INSERT [dbo].[NAPRAWA] ([naprawaID], [Nazwa_naprawy], [Cena], [id_kategorii], [id_dostawcy], [Ilosc_roboczogodzin]) VALUES (10, N'Usunięcie odprysków lakieru', 700, 3, 2, N'10') 
GO
INSERT [dbo].[NAPRAWA] ([naprawaID], [Nazwa_naprawy], [Cena], [id_kategorii], [id_dostawcy], [Ilosc_roboczogodzin]) VALUES (11, N'Naprawa amortyzatorów przednich lub tylnych', 1000, 4, 5, N'11') 
GO
INSERT [dbo].[NAPRAWA] ([naprawaID], [Nazwa_naprawy], [Cena], [id_kategorii], [id_dostawcy], [Ilosc_roboczogodzin]) VALUES (12, N'Naprawa układu wydechowego', 2200, 4, 5, N'20')   
GO
INSERT [dbo].[NAPRAWA] ([naprawaID], [Nazwa_naprawy], [Cena], [id_kategorii], [id_dostawcy], [Ilosc_roboczogodzin]) VALUES (13, N'Wymiana wahacza i tuleji', 900, 4, 5, N'16')  
GO
INSERT [dbo].[NAPRAWA] ([naprawaID], [Nazwa_naprawy], [Cena], [id_kategorii], [id_dostawcy], [Ilosc_roboczogodzin]) VALUES (14, N'Prostowanie felg', 300, 4, 1, N'2')   
GO
INSERT [dbo].[NAPRAWA] ([naprawaID], [Nazwa_naprawy], [Cena], [id_kategorii], [id_dostawcy], [Ilosc_roboczogodzin]) VALUES (15, N'Naprawa uszczelki pod głowicą', 2000, 5, 3, N'10')  
GO
INSERT [dbo].[NAPRAWA] ([naprawaID], [Nazwa_naprawy], [Cena], [id_kategorii], [id_dostawcy], [Ilosc_roboczogodzin]) VALUES (16, N'Wymiana rozrządu', 3300, 5, 3, N'20')  
GO
INSERT [dbo].[NAPRAWA] ([naprawaID], [Nazwa_naprawy], [Cena], [id_kategorii], [id_dostawcy], [Ilosc_roboczogodzin]) VALUES (17, N'Naprawa turbosprężarki', 4300, 5, 3, N'20')  
GO
INSERT [dbo].[NAPRAWA] ([naprawaID], [Nazwa_naprawy], [Cena], [id_kategorii], [id_dostawcy], [Ilosc_roboczogodzin]) VALUES (18, N'Napawa wtrysków', 1900, 5, 1, N'16')  

SET IDENTITY_INSERT [dbo].[NAPRAWA] OFF 
GO

-- dane do tabeli STANOWISKA

SET IDENTITY_INSERT [dbo].[STANOWISKA] ON 

GO
INSERT [dbo].[STANOWISKA] ([stanowiskoID], [Nazwa_stanowiska], [Zarobki_za_godzine]) VALUES (1, N'Młodszy Blacharz', 18) 
GO
INSERT [dbo].[STANOWISKA] ([stanowiskoID], [Nazwa_stanowiska], [Zarobki_za_godzine]) VALUES (2, N'Blacharz', 30) 
GO
INSERT [dbo].[STANOWISKA] ([stanowiskoID], [Nazwa_stanowiska], [Zarobki_za_godzine]) VALUES (3, N'Lakiernik', 30) 
GO
INSERT [dbo].[STANOWISKA] ([stanowiskoID], [Nazwa_stanowiska], [Zarobki_za_godzine]) VALUES (4, N'Młodszy Mechanik', 18) 
GO
INSERT [dbo].[STANOWISKA] ([stanowiskoID], [Nazwa_stanowiska], [Zarobki_za_godzine]) VALUES (5, N'Mechanik', 18) 
GO
INSERT [dbo].[STANOWISKA] ([stanowiskoID], [Nazwa_stanowiska], [Zarobki_za_godzine]) VALUES (6, N'Starszy Mechanik', 45) 
GO
INSERT [dbo].[STANOWISKA] ([stanowiskoID], [Nazwa_stanowiska], [Zarobki_za_godzine]) VALUES (7, N'Stażysta', 12) 

SET IDENTITY_INSERT [dbo].[STANOWISKA] OFF 
GO

-- dane do tabeli PRACOWNK

SET IDENTITY_INSERT [dbo].[PRACOWNIK] ON 

GO
INSERT [dbo].[PRACOWNIK] ([pracownikID], [Imie_pracownika], [Nazwisko_pracownika], [id_stanowiska], [Staz_pracy]) VALUES (1, N'Michał', N'Karpiński', 1, 2)
GO
INSERT [dbo].[PRACOWNIK] ([pracownikID], [Imie_pracownika], [Nazwisko_pracownika], [id_stanowiska], [Staz_pracy]) VALUES (2, N'Andrzej', N'Nowak', 1, 1)
GO
INSERT [dbo].[PRACOWNIK] ([pracownikID], [Imie_pracownika], [Nazwisko_pracownika], [id_stanowiska], [Staz_pracy]) VALUES (3, N'Jarosław', N'Kowalik', 2, 5)
GO
INSERT [dbo].[PRACOWNIK] ([pracownikID], [Imie_pracownika], [Nazwisko_pracownika], [id_stanowiska], [Staz_pracy]) VALUES (4, N'Marcin', N'Pytel', 3, 6)
GO
INSERT [dbo].[PRACOWNIK] ([pracownikID], [Imie_pracownika], [Nazwisko_pracownika], [id_stanowiska], [Staz_pracy]) VALUES (5, N'Jacek', N'Wierzbicki', 4, 2)
GO
INSERT [dbo].[PRACOWNIK] ([pracownikID], [Imie_pracownika], [Nazwisko_pracownika], [id_stanowiska], [Staz_pracy]) VALUES (6, N'Wojtek', N'Gola', 5, 6)
GO
INSERT [dbo].[PRACOWNIK] ([pracownikID], [Imie_pracownika], [Nazwisko_pracownika], [id_stanowiska], [Staz_pracy]) VALUES (7, N'Michał', N'Makowski', 5, 8)
GO
INSERT [dbo].[PRACOWNIK] ([pracownikID], [Imie_pracownika], [Nazwisko_pracownika], [id_stanowiska], [Staz_pracy]) VALUES (8, N'Bogdan', N'Misiewicz', 6, 15)
GO
INSERT [dbo].[PRACOWNIK] ([pracownikID], [Imie_pracownika], [Nazwisko_pracownika], [id_stanowiska], [Staz_pracy]) VALUES (9, N'Piotr', N'Gąbka', 7, 1)
GO
INSERT [dbo].[PRACOWNIK] ([pracownikID], [Imie_pracownika], [Nazwisko_pracownika], [id_stanowiska], [Staz_pracy]) VALUES (10, N'Tomasz', N'Golonka', 7, 1)
  
SET IDENTITY_INSERT [dbo].[PRACOWNIK] OFF 
GO

-- dane do tabeli MARKA

SET IDENTITY_INSERT [dbo].[MARKA] ON 

GO
INSERT [dbo].[MARKA] ([markaID], [Nazwa_marki]) VALUES (1, N'Volkswagen')
GO
INSERT [dbo].[MARKA] ([markaID], [Nazwa_marki]) VALUES (2, N'Skoda')
GO
INSERT [dbo].[MARKA] ([markaID], [Nazwa_marki]) VALUES (3, N'Seat')

SET IDENTITY_INSERT [dbo].[MARKA] OFF 
GO

-- dane do tabeli MODEL

SET IDENTITY_INSERT [dbo].[MODEL] ON 

GO
INSERT [dbo].[MODEL] ([modelID], [Nazwa_modelu], [id_marki]) VALUES (1, N'Golf', 1)
GO
INSERT [dbo].[MODEL] ([modelID], [Nazwa_modelu], [id_marki]) VALUES (2, N'Passat', 1)
GO
INSERT [dbo].[MODEL] ([modelID], [Nazwa_modelu], [id_marki]) VALUES (3, N'Polo', 1)
GO
INSERT [dbo].[MODEL] ([modelID], [Nazwa_modelu], [id_marki]) VALUES (4, N'Up', 1)
GO
INSERT [dbo].[MODEL] ([modelID], [Nazwa_modelu], [id_marki]) VALUES (5, N'Arteon', 1)
GO
INSERT [dbo].[MODEL] ([modelID], [Nazwa_modelu], [id_marki]) VALUES (6, N'Fabia', 2)
GO
INSERT [dbo].[MODEL] ([modelID], [Nazwa_modelu], [id_marki]) VALUES (7, N'Octavia', 2)
GO
INSERT [dbo].[MODEL] ([modelID], [Nazwa_modelu], [id_marki]) VALUES (8, N'Scala', 2)
GO
INSERT [dbo].[MODEL] ([modelID], [Nazwa_modelu], [id_marki]) VALUES (9, N'Superb', 2)
GO
INSERT [dbo].[MODEL] ([modelID], [Nazwa_modelu], [id_marki]) VALUES (10, N'Ibiza', 3)
GO
INSERT [dbo].[MODEL] ([modelID], [Nazwa_modelu], [id_marki]) VALUES (11, N'Cupra', 3)
GO
INSERT [dbo].[MODEL] ([modelID], [Nazwa_modelu], [id_marki]) VALUES (12, N'Toledo', 3)
GO
INSERT [dbo].[MODEL] ([modelID], [Nazwa_modelu], [id_marki]) VALUES (13, N'Alahamra', 3)

SET IDENTITY_INSERT [dbo].[MODEL] OFF 
GO

-- dane do tabeli POJAZD

SET IDENTITY_INSERT [dbo].[POJAZD] ON 

GO
INSERT [dbo].[POJAZD] ([pojazdID], [id_modelu], [VIN], [Rocznik], [Rodzaj_paliwa], [Pojemnosc_silnika]) VALUES (1, 2, 48496165, N'2007', N'Benzyna', N'2.0')
GO
INSERT [dbo].[POJAZD] ([pojazdID], [id_modelu], [VIN], [Rocznik], [Rodzaj_paliwa], [Pojemnosc_silnika]) VALUES (2, 5, 45308545, N'2014', N'Benzyna', N'1.5')
GO
INSERT [dbo].[POJAZD] ([pojazdID], [id_modelu], [VIN], [Rocznik], [Rodzaj_paliwa], [Pojemnosc_silnika]) VALUES (3, 5, 11105, N'2005', N'Diesel', N'1.6')
GO
INSERT [dbo].[POJAZD] ([pojazdID], [id_modelu], [VIN], [Rocznik], [Rodzaj_paliwa], [Pojemnosc_silnika]) VALUES (4, 11, 27879777, N'2019', N'Benzyna', N'1.9')
GO
INSERT [dbo].[POJAZD] ([pojazdID], [id_modelu], [VIN], [Rocznik], [Rodzaj_paliwa], [Pojemnosc_silnika]) VALUES (5, 8, 57885521, N'2003', N'Diesel', N'2.5')
GO
INSERT [dbo].[POJAZD] ([pojazdID], [id_modelu], [VIN], [Rocznik], [Rodzaj_paliwa], [Pojemnosc_silnika]) VALUES (6, 6, 1000000005, N'2012', N'Diesel', N'3.0')
GO
INSERT [dbo].[POJAZD] ([pojazdID], [id_modelu], [VIN], [Rocznik], [Rodzaj_paliwa], [Pojemnosc_silnika]) VALUES (7, 9, 1055884155, N'2017', N'Diesel', N'1.2')
GO
INSERT [dbo].[POJAZD] ([pojazdID], [id_modelu], [VIN], [Rocznik], [Rodzaj_paliwa], [Pojemnosc_silnika]) VALUES (8, 1, 565541888, N'2001', N'Diesel', N'1.9')
GO
INSERT [dbo].[POJAZD] ([pojazdID], [id_modelu], [VIN], [Rocznik], [Rodzaj_paliwa], [Pojemnosc_silnika]) VALUES (9, 3, 448941100, N'2015', N'Benzyna', N'2.5')
GO
INSERT [dbo].[POJAZD] ([pojazdID], [id_modelu], [VIN], [Rocznik], [Rodzaj_paliwa], [Pojemnosc_silnika]) VALUES (10, 3, 1816188888, N'2008', N'Benzyna', N'1.5')

SET IDENTITY_INSERT [dbo].[POJAZD] OFF 
GO

-- dane do tabeli ZNIZKA

SET IDENTITY_INSERT [dbo].[ZNIZKA] ON 

GO
INSERT [dbo].[ZNIZKA] ([znizkaID], [Ilosc_wizyt], [Znizka]) VALUES (1, N'0-2', 0.00)
GO
INSERT [dbo].[ZNIZKA] ([znizkaID], [Ilosc_wizyt], [Znizka]) VALUES (2, N'3-5', 0.10)
GO
INSERT [dbo].[ZNIZKA] ([znizkaID], [Ilosc_wizyt], [Znizka]) VALUES (3, N'6-20', 0.20)
GO
INSERT [dbo].[ZNIZKA] ([znizkaID], [Ilosc_wizyt], [Znizka]) VALUES (4, N'21-50', 0.30)
GO
INSERT [dbo].[ZNIZKA] ([znizkaID], [Ilosc_wizyt], [Znizka]) VALUES (5, N' > 51', 0.50)

SET IDENTITY_INSERT [dbo].[ZNIZKA] OFF 
GO

-- dane do tabeli KLIENT

SET IDENTITY_INSERT [dbo].[KLIENT] ON

GO
INSERT [dbo].[KLIENT] ([klientID], [Imie], [Nazwisko], [PESEL], [Numer_telefonu], [Email], [Ostatnia wizyta], [id_znizki]) VALUES (1, N'Tomasz', N'Łasek', 59845359411, 123456789, N'tomeklasek@gmail.pl', '2015-11-20', 1)
GO 
INSERT [dbo].[KLIENT] ([klientID], [Imie], [Nazwisko], [PESEL], [Numer_telefonu], [Email], [Ostatnia wizyta], [id_znizki]) VALUES (2, N'Andrzej', N'Duda' , 10598546216, 564897561, N'amdrzejduda@gmail.pl', '2000-10-11', 3)
GO
INSERT [dbo].[KLIENT] ([klientID], [Imie], [Nazwisko], [PESEL], [Numer_telefonu], [Email], [Ostatnia wizyta], [id_znizki]) VALUES (3, N'Robert', N'Biedroń'   , 48489494894, 858585859, N'robertbiedron@gmail.pl', NULL, 2)
GO
INSERT [dbo].[KLIENT] ([klientID], [Imie], [Nazwisko], [PESEL], [Numer_telefonu], [Email], [Ostatnia wizyta], [id_znizki]) VALUES (4, N'Krzysztof', N'Bosak'  , 50589444941, 125989874, NULL, NULL, 3)
GO 
INSERT [dbo].[KLIENT] ([klientID], [Imie], [Nazwisko], [PESEL], [Numer_telefonu], [Email], [Ostatnia wizyta], [id_znizki]) VALUES (5, N'Szymon', N'Hołownia'  , 55555888888, 564812121, N'szymonholownia@gmail.pl', '2018-05-29', 5)
GO 
INSERT [dbo].[KLIENT] ([klientID], [Imie], [Nazwisko], [PESEL], [Numer_telefonu], [Email], [Ostatnia wizyta], [id_znizki]) VALUES (6, N'Rafał', N'Trzaskowski'  , 10555888228, 595959595, NULL, '2015-02-06', 1)
GO 
INSERT [dbo].[KLIENT] ([klientID], [Imie], [Nazwisko], [PESEL], [Numer_telefonu], [Email], [Ostatnia wizyta], [id_znizki]) VALUES (7, N'Władysław', N'Kosiniak'  , 15985656591, 185858562, N'wkk@gmail.pl', '2010-05-10', 2)
GO 
INSERT [dbo].[KLIENT] ([klientID], [Imie], [Nazwisko], [PESEL], [Numer_telefonu], [Email], [Ostatnia wizyta], [id_znizki]) VALUES (8, N'Paweł', N'Tatajno'  , 41841651681, 150000002, N'pt@gmail.pl', NULL, 2)

SET IDENTITY_INSERT [dbo].[KLIENT] OFF 
GO

-- dane do tabeli ZLECENIE NAPRAWY

SET IDENTITY_INSERT [dbo].[ZLECENIE_NAPRAWY] ON

GO
INSERT [dbo].[ZLECENIE_NAPRAWY] ([zlecenieID], [data_przyjecia], [id_pojazdu], [id_pracownika], [id_klienta], [data_zakonczenia], [ZAKONCZONE?]) VALUES (1, '2020-05-10', 1, 2, 1, NULL, 0)
GO
INSERT [dbo].[ZLECENIE_NAPRAWY] ([zlecenieID], [data_przyjecia], [id_pojazdu], [id_pracownika], [id_klienta], [data_zakonczenia], [ZAKONCZONE?]) VALUES (2, '2020-05-10', 10, 3, 2, '2020-06-11', 1)
GO
INSERT [dbo].[ZLECENIE_NAPRAWY] ([zlecenieID], [data_przyjecia], [id_pojazdu], [id_pracownika], [id_klienta], [data_zakonczenia], [ZAKONCZONE?]) VALUES (3, '2020-05-15', 8, 5, 3, NULL, 0)
GO
INSERT [dbo].[ZLECENIE_NAPRAWY] ([zlecenieID], [data_przyjecia], [id_pojazdu], [id_pracownika], [id_klienta], [data_zakonczenia], [ZAKONCZONE?]) VALUES (4, '2020-05-16', 3, 4, 4, '2020-06-12', 1)
GO
INSERT [dbo].[ZLECENIE_NAPRAWY] ([zlecenieID], [data_przyjecia], [id_pojazdu], [id_pracownika], [id_klienta], [data_zakonczenia], [ZAKONCZONE?]) VALUES (5, '2020-05-17', 2, 1, 6, '2020-06-12', 1)
GO
INSERT [dbo].[ZLECENIE_NAPRAWY] ([zlecenieID], [data_przyjecia], [id_pojazdu], [id_pracownika], [id_klienta], [data_zakonczenia], [ZAKONCZONE?]) VALUES (6, '2020-06-11', 4, 3, 5, NULL, 0)
GO
INSERT [dbo].[ZLECENIE_NAPRAWY] ([zlecenieID], [data_przyjecia], [id_pojazdu], [id_pracownika], [id_klienta], [data_zakonczenia], [ZAKONCZONE?]) VALUES (7, '2020-06-15', 7, 4, 1, NULL, 0)
GO

SET IDENTITY_INSERT [dbo].[ZLECENIE_NAPRAWY] OFF 
GO

-- dane do tabeli SZCZEGÓŁY NAPRAWY

SET IDENTITY_INSERT [dbo].[SZCZEGOLY_NAPRAWY] ON

GO
INSERT [dbo].[SZCZEGOLY_NAPRAWY] ([id_zlecenia], [id_naprawy]) VALUES (1, 4)
GO
INSERT [dbo].[SZCZEGOLY_NAPRAWY] ([id_zlecenia], [id_naprawy]) VALUES (1, 5)
GO
INSERT [dbo].[SZCZEGOLY_NAPRAWY] ([id_zlecenia], [id_naprawy]) VALUES (2, 1)
GO
INSERT [dbo].[SZCZEGOLY_NAPRAWY] ([id_zlecenia], [id_naprawy]) VALUES (2, 2)
GO
INSERT [dbo].[SZCZEGOLY_NAPRAWY] ([id_zlecenia], [id_naprawy]) VALUES (2, 3)
GO
INSERT [dbo].[SZCZEGOLY_NAPRAWY] ([id_zlecenia], [id_naprawy]) VALUES (3, 6)
GO
INSERT [dbo].[SZCZEGOLY_NAPRAWY] ([id_zlecenia], [id_naprawy]) VALUES (4, 1)
GO
INSERT [dbo].[SZCZEGOLY_NAPRAWY] ([id_zlecenia], [id_naprawy]) VALUES (4, 7)
GO
INSERT [dbo].[SZCZEGOLY_NAPRAWY] ([id_zlecenia], [id_naprawy]) VALUES (5, 9)
GO
INSERT [dbo].[SZCZEGOLY_NAPRAWY] ([id_zlecenia], [id_naprawy]) VALUES (5, 10)
GO
INSERT [dbo].[SZCZEGOLY_NAPRAWY] ([id_zlecenia], [id_naprawy]) VALUES (6, 2)
GO
INSERT [dbo].[SZCZEGOLY_NAPRAWY] ([id_zlecenia], [id_naprawy]) VALUES (7, 1)
GO
INSERT [dbo].[SZCZEGOLY_NAPRAWY] ([id_zlecenia], [id_naprawy]) VALUES (7, 2)
GO
INSERT [dbo].[SZCZEGOLY_NAPRAWY] ([id_zlecenia], [id_naprawy]) VALUES (7, 3)

SET IDENTITY_INSERT [dbo].[SZCZEGOLY_NAPRAWY] OFF

SET NOCOUNT OFF