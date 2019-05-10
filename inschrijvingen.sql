SELECT concat(studenten.voornaam,' ', studenten.tussenvoegsel,' ', studenten.achternaam) AS Naam, klassen.cohort , klassen.klas_code, klassen_studenten.ov_nummer, concat(docenten.voorletters, ' ', docenten.tussenvoegsel, ' ', docenten.achternaam) AS 'slb-er' FROM studenten
INNER JOIN klassen_studenten 
ON klassen_studenten.ov_nummer = studenten.ov_nummer
INNER JOIN klassen
ON klassen.klas_code = klassen_studenten.klas_code
INNER JOIN docenten
ON klassen.slb_code = docenten.docent_code
WHERE studenten.actief = true
ORDER BY  klassen.klas_code ASC, studenten.achternaam ASC;