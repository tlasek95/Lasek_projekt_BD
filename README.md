# Lasek_projekt_BD

OPIS PROJEKTU
Stworzona przeze mnie baza danych to SERWIS SAMOCHODOWY. Baza ta składa się z 12 tabel:

• ZLECENIE NAPRAWY - zawierającej informacje o zleceniu,
• SZCZEGÓŁY NAPRAWY - będącej tabelą pośrednią pomiędzy tabelami NAPRAWA i ZLECENIE NAPRAWY, umożliwiającą połączenie WIELE DO WIELU,
• NAPRAWA - zawierająca informacje o rodzajach napraw dostępnych w serwisie,
• KATEGORIA - będącej uzupełnieniem tabeli NAPRAWA,
• DOSTAWCA CZĘŚCI – zawierającej informacje o dostawcach części do poszczególnych napraw
• PRACOWNIK – zawierającej informacje o pracownikach
• STANOWISKA – będącej uzupełnieniem tabeli PRACOWNIK
• POJAZD – zawierającej informacje o pojazdach
• MODEL – będącej uzupełnieniem tabeli POJAZD
• MARKA – będącej uzupełnieniem tabeli MARKA
• KLIENT – zawierającej informacje o klientach
• ZNIŻKA – zawierającej informacje o zniżkach dla poszczególnych klientów
Tabele połączone są ze sobą relacyjnie, co umożliwia spójność danych oraz łatwość w jej obsłudze.
Dodatkowo, w tabeli KLIENT stworzyłem constrainty zabezpieczające przed wpisaniem danych w niepoprawnym formacie
Stworzony rówież został trigger, zmieniający status naprawy po wpisaniu daty zakończenia prac.
