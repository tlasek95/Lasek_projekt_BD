IF EXISTS (SELECT name FROM master.sys.databases WHERE name = N'Lasek_projekt_BD')			-- tworzenie bazy Lasek_projekt_BD
BEGIN
    PRINT 'Database Lasek_projekt_BD already exist'
END
ELSE
BEGIN
    CREATE DATABASE Lasek_projekt_BD
    PRINT 'Database Lasek_projekt_BD is created.'
END
GO

USE Lasek_projekt_BD																	-- prze³¹czenie kontekstu bazy danych na Lasek_projekt_BD
GO

-- tworzenie kolejnych tabel - skrypt wygenerowany msSQL Server Management Studio

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- tabela nr 1 - zlecenie naprawy

CREATE TABLE [dbo].[ZLECENIE_NAPRAWY](                  
	[zlecenieID] [int] IDENTITY(1,1) NOT NULL,
	[data_przyjecia] [date] NOT NULL,
	[id_pojazdu] [int] NOT NULL,
	[id_pracownika] [int] NULL,
	[id_klienta] [int] NOT NULL,
	[data_zakonczenia] [date] NULL,
	[ZAKONCZONE?] [bit] NULL,
 CONSTRAINT [PK_ZLECENIE_NAPRAWY] PRIMARY KEY CLUSTERED 
(
	[zlecenieID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

-- tabela nr 2 - klient

CREATE TABLE [dbo].[KLIENT](
	[klientID] [int] IDENTITY(1,1) NOT NULL,
	[Imie] [nvarchar](20) NOT NULL,
	[Nazwisko] [nvarchar](50) NOT NULL,
	[PESEL] [nchar](11) NOT NULL,
	[Numer_telefonu] [nchar](9) NOT NULL,
	[Email] [nvarchar](50) NULL,
	[Ostatnia wizyta] [date] NULL,
	[id_znizki] [int] NOT NULL,
 CONSTRAINT [PK_KLIENT] PRIMARY KEY CLUSTERED 
(
	[klientID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

-- constraint sprawdzajacy poprawnosc danych - PESEL musi byc wpisany w postaci 11 cyfr od 0 do 9

ALTER TABLE [dbo].[KLIENT]  WITH CHECK ADD  CONSTRAINT [CK_KLIENT_PESEL] CHECK  (([PESEL] like N'[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'))		--wymuszenie odpowiedniego formatu wpisywanych danych
GO

ALTER TABLE [dbo].[KLIENT] CHECK CONSTRAINT [CK_KLIENT_PESEL]
GO

-- constraint sprawdzajacy poprawnosc danych - Numer telefonu musi byc wpisany w postaci 9 cyfr od 0 do 9, za wyjatkiem pierwszej (1- 9)

ALTER TABLE [dbo].[KLIENT]  WITH CHECK ADD  CONSTRAINT [CK_KLIENT_Nr_tel] CHECK  (([Numer_telefonu] like N'[1-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'))
GO

ALTER TABLE [dbo].[KLIENT] CHECK CONSTRAINT [CK_KLIENT_Nr_tel]
GO

-- tabela nr 3 - znizka

CREATE TABLE [dbo].[ZNIZKA](
	[znizkaID] [int] IDENTITY(1,1) NOT NULL,
	[Ilosc_wizyt] [nvarchar](10) NOT NULL,
	[Znizka] [nchar](10) NOT NULL,
 CONSTRAINT [PK_ZNIZKA] PRIMARY KEY CLUSTERED 
(
	[znizkaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

-- tabela nr 4 - szczegoly naprawy

CREATE TABLE [dbo].[SZCZEGOLY_NAPRAWY](
	[id_zlecenia] [int] IDENTITY(1,1) NOT NULL,
	[id_naprawy] [int] NOT NULL
) ON [PRIMARY]

GO

-- tabela nr 5 - naprawa

CREATE TABLE [dbo].[NAPRAWA](
	[naprawaID] [int] IDENTITY(1,1) NOT NULL,
	[Nazwa_naprawy] [nvarchar](50) NOT NULL,
	[Cena] [money] NOT NULL,
	[id_kategorii] [int] NOT NULL,
	[id_dostawcy] [int] NOT NULL,
	[Ilosc_roboczogodzin] INT NOT NULL,
 CONSTRAINT [PK_NAPRAWA] PRIMARY KEY CLUSTERED 
(
	[naprawaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

-- tabela nr 6 - kategoria

CREATE TABLE [dbo].[KATEGORIA](
	[kategoriaID] [int] IDENTITY(1,1) NOT NULL,
	[Nazwa_kategorii] [nvarchar](50) NOT NULL,
	[Opis] [text] NULL,
 CONSTRAINT [PK_KATEGORIA] PRIMARY KEY CLUSTERED 
(
	[kategoriaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

-- tabela nr 7 - dostawcy

CREATE TABLE [dbo].[DOSTAWCY](
	[dostawcaID] [int] IDENTITY(1,1) NOT NULL,
	[Nazwa_firmy] [nvarchar](50) NOT NULL,
	[Adres] [text] NOT NULL,
	[Miasto] [nvarchar](50) NOT NULL,
	[Kraj] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NULL,
	[Poczatek_wspolpracy] [date] NOT NULL,
 CONSTRAINT [PK_DOSTAWCY] PRIMARY KEY CLUSTERED 
(
	[dostawcaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

-- tabela nr 8 - pracownik

CREATE TABLE [dbo].[PRACOWNIK](
	[pracownikID] [int] IDENTITY(1,1) NOT NULL,
	[Imie_pracownika] [nvarchar](20) NOT NULL,
	[Nazwisko_pracownika] [nvarchar](50) NOT NULL,
	[id_stanowiska] [int] NOT NULL,
	[Staz_pracy] [nchar](10) NOT NULL,
 CONSTRAINT [PK_PRACOWNIK] PRIMARY KEY CLUSTERED 
(
	[pracownikID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

-- tabela nr 9 - stanowiska

CREATE TABLE [dbo].[STANOWISKA](
	[stanowiskoID] [int] IDENTITY(1,1) NOT NULL,
	[Nazwa_stanowiska] [nvarchar](50) NOT NULL,
	[Zarobki_za_godzine] INT NOT NULL,
 CONSTRAINT [PK_STANOWISKA] PRIMARY KEY CLUSTERED 
(
	[stanowiskoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

-- tabela nr 10 - pojazd

CREATE TABLE [dbo].[POJAZD](
	[pojazdID] [int] IDENTITY(1,1) NOT NULL,
	[id_modelu] [int] NOT NULL,
	[VIN] [nchar](10) NOT NULL,
	[Rocznik] [nchar](10) NOT NULL,
	[Rodzaj_paliwa] [nvarchar](10) NOT NULL,
	[Pojemnosc_silnika] [decimal](18, 0) NULL,
 CONSTRAINT [PK_POJAZD] PRIMARY KEY CLUSTERED 
(
	[pojazdID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

-- tabela nr 11 - model

CREATE TABLE [dbo].[MODEL](
	[modelID] [int] IDENTITY(1,1) NOT NULL,
	[Nazwa_modelu] [nvarchar](50) NOT NULL,
	[id_marki] [int] NOT NULL,
 CONSTRAINT [PK_MODEL] PRIMARY KEY CLUSTERED 
(
	[modelID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

-- tabela nr 12 - marka

CREATE TABLE [dbo].[MARKA](
	[markaID] [int] IDENTITY(1,1) NOT NULL,
	[Nazwa_marki] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_MARKA] PRIMARY KEY CLUSTERED 
(
	[markaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

-- tworzenie relacji pomiedzy tabelami - skrypt wygenerowany msSQL Server Management Studio

-- relacje tabeli ZLECENIE NAPRAWY

ALTER TABLE [dbo].[ZLECENIE_NAPRAWY]  WITH CHECK ADD  CONSTRAINT [FK_ZLECENIE_NAPRAWY_KLIENT] FOREIGN KEY([id_klienta])
REFERENCES [dbo].[KLIENT] ([klientID])
GO

ALTER TABLE [dbo].[ZLECENIE_NAPRAWY] CHECK CONSTRAINT [FK_ZLECENIE_NAPRAWY_KLIENT]
GO

ALTER TABLE [dbo].[ZLECENIE_NAPRAWY]  WITH CHECK ADD  CONSTRAINT [FK_ZLECENIE_NAPRAWY_POJAZD] FOREIGN KEY([id_pojazdu])
REFERENCES [dbo].[POJAZD] ([pojazdID])
GO

ALTER TABLE [dbo].[ZLECENIE_NAPRAWY] CHECK CONSTRAINT [FK_ZLECENIE_NAPRAWY_POJAZD]
GO

ALTER TABLE [dbo].[ZLECENIE_NAPRAWY]  WITH CHECK ADD  CONSTRAINT [FK_ZLECENIE_NAPRAWY_PRACOWNIK] FOREIGN KEY([id_pracownika])
REFERENCES [dbo].[PRACOWNIK] ([pracownikID])
GO

ALTER TABLE [dbo].[ZLECENIE_NAPRAWY] CHECK CONSTRAINT [FK_ZLECENIE_NAPRAWY_PRACOWNIK]
GO

-- relacje tabeli KLIENT

ALTER TABLE [dbo].[KLIENT]  WITH CHECK ADD  CONSTRAINT [FK_KLIENT_ZNIZKA] FOREIGN KEY([id_znizki])
REFERENCES [dbo].[ZNIZKA] ([znizkaID])
GO

ALTER TABLE [dbo].[KLIENT] CHECK CONSTRAINT [FK_KLIENT_ZNIZKA]
GO


-- relacje tabeli SZCZEGOLY NAPRAWY

ALTER TABLE [dbo].[SZCZEGOLY_NAPRAWY]  WITH CHECK ADD  CONSTRAINT [FK_SZCZEGOLY_NAPRAWY_NAPRAWA] FOREIGN KEY([id_naprawy])
REFERENCES [dbo].[NAPRAWA] ([naprawaID])
GO

ALTER TABLE [dbo].[SZCZEGOLY_NAPRAWY] CHECK CONSTRAINT [FK_SZCZEGOLY_NAPRAWY_NAPRAWA]
GO

ALTER TABLE [dbo].[SZCZEGOLY_NAPRAWY]  WITH CHECK ADD  CONSTRAINT [FK_SZCZEGOLY_NAPRAWY_ZLECENIE_NAPRAWY] FOREIGN KEY([id_zlecenia])
REFERENCES [dbo].[ZLECENIE_NAPRAWY] ([zlecenieID])
GO

ALTER TABLE [dbo].[SZCZEGOLY_NAPRAWY] CHECK CONSTRAINT [FK_SZCZEGOLY_NAPRAWY_ZLECENIE_NAPRAWY]
GO

-- relacje tabeli NAPRAWA

ALTER TABLE [dbo].[NAPRAWA]  WITH CHECK ADD  CONSTRAINT [FK_NAPRAWA_DOSTAWCY] FOREIGN KEY([id_dostawcy])
REFERENCES [dbo].[DOSTAWCY] ([dostawcaID])
GO

ALTER TABLE [dbo].[NAPRAWA] CHECK CONSTRAINT [FK_NAPRAWA_DOSTAWCY]
GO

ALTER TABLE [dbo].[NAPRAWA]  WITH CHECK ADD  CONSTRAINT [FK_NAPRAWA_KATEGORIA] FOREIGN KEY([id_kategorii])
REFERENCES [dbo].[KATEGORIA] ([kategoriaID])
GO

ALTER TABLE [dbo].[NAPRAWA] CHECK CONSTRAINT [FK_NAPRAWA_KATEGORIA]
GO

-- relacje tabeli PRACOWNIK

ALTER TABLE [dbo].[PRACOWNIK]  WITH CHECK ADD  CONSTRAINT [FK_PRACOWNIK_STANOWISKA] FOREIGN KEY([id_stanowiska])
REFERENCES [dbo].[STANOWISKA] ([stanowiskoID])
GO

ALTER TABLE [dbo].[PRACOWNIK] CHECK CONSTRAINT [FK_PRACOWNIK_STANOWISKA]
GO

-- relacje tabeli POJAZD

ALTER TABLE [dbo].[POJAZD]  WITH CHECK ADD  CONSTRAINT [FK_POJAZD_MODEL] FOREIGN KEY([id_modelu])
REFERENCES [dbo].[MODEL] ([modelID])
GO

ALTER TABLE [dbo].[POJAZD] CHECK CONSTRAINT [FK_POJAZD_MODEL]
GO

-- relacje tabeli MODEL

ALTER TABLE [dbo].[MODEL]  WITH CHECK ADD  CONSTRAINT [FK_MODEL_MARKA] FOREIGN KEY([id_marki])
REFERENCES [dbo].[MARKA] ([markaID])
GO

ALTER TABLE [dbo].[MODEL] CHECK CONSTRAINT [FK_MODEL_MARKA]
GO
