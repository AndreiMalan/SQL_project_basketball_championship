SELECT *
FROM echipe 
WHERE nr_infrangeri= (SELECT max(nr_infrangeri)
FROM echipe)

SELECT avg(nr_spectatori) AS "Numarul mediu de spectatori" 
FROM detalii_meciuri

SELECT nume, prenume, varsta, nume_echipa
FROM jucatori
WHERE varsta>
(SELECT varsta
       FROM jucatori
       WHERE nume='Moldoveanu' AND prenume='Vlad')
       ORDER BY varsta desc


SELECT id_game, nr_spectatori
FROM detalii_meciuri 
WHERE nr_spectatori >=
(SELECT avg(nr_spectatori)
FROM detalii_meciuri)


SELECT id_game, cosuri_3p AS "Cosuri de 3 puncte inscrise"
FROM detalii_meciuri 
WHERE nr_libere =
(SELECT min(nr_libere)
FROM detalii_meciuri)


SELECT id_meci, gazda AS "Echipa gazda", oaspeti AS "Echipa oaspete", data_meci AS "Data meciului", pct_gazda AS "Puncte marcate de gazda", pct_oaspeti AS "Puncte marcate de oaspeti"
FROM meciuri 
WHERE id_arbitru =
(SELECT id
FROM arbitrii 
WHERE vechime>12)


SELECT nume_antrenor AS "Nume Antrenor", prenume_antrenor AS "Prenume Antrenor", 
nume AS "Numele echipei antrenate"
FROM echipe 
WHERE nr_victorii=
(SELECT max(nr_victorii)
FROM echipe )

SELECT avg(varsta) AS "Varsta medie"
FROM jucatori 
WHERE nume_echipa=
(SELECT nume
FROM echipe 
WHERE nr_infrangeri=3)


SELECT oras AS "Denumirea orasului"
FROM echipe 
WHERE nume=
(SELECT nume_echipa
FROM jucatori 
WHERE id_jucator='35')


SELECT m.id_meci AS "ID Meci", m.gazda AS "Echipa gazda", m.oaspeti AS "Echipa oaspete", 
m.pct_gazda AS "Puncte marcate de gazde", m.pct_oaspeti AS "Puncte marcate de oaspeti", 
a.nume AS "Numele arbitrului", a.prenume AS "Prenumele arbitrului" 
FROM meciuri m JOIN arbitrii a
ON m.id_arbitru=a.id


SELECT d.id_jucat_eliminati AS "ID jucatori eliminati", j.nume AS "Nume jucator", 
j.prenume AS "Prenume jucator", e.nume AS "Numele echipei"
FROM detalii_meciuri d JOIN jucatori j
ON d.id_jucat_eliminati=j.id_jucator
JOIN echipe e
ON j.nume_echipa=e.nume


SELECT d.id_jucat_eliminati AS "ID jucatori eliminati", j.nume AS "Nume jucator", 
j.prenume AS "Prenume jucator", j.varsta AS "Varsta", e.nume AS "Numele echipei"
FROM detalii_meciuri d, jucatori j, echipe e
WHERE (d.id_jucat_eliminati=j.id_jucator AND j.nume_echipa=e.nume)
ORDER BY 4 DESC;

SELECT m.id_meci AS "ID Meci", m.gazda AS "Echipa gazda", m.oaspeti AS "Echipa oaspete", 
m.pct_gazda AS "Puncte marcate de gazde", m.pct_oaspeti AS "Puncte marcate de oaspeti", 
a.nume AS "Numele arbitrului", a.prenume AS "Prenumele arbitrului" 
FROM meciuri m, arbitrii a
WHERE (m.id_arbitru=a.id)
      ORDER BY a.nume;


SELECT nume, prenume, inaltime
FROM jucatori j
WHERE j.inaltime=
(SELECT max(inaltime)
FROM jucatori
WHERE pozitie=j.pozitie)


SELECT nume AS "Numele jucătorului", prenume AS "Prenumele jucătorului", varsta AS "Vârsta jucătorului", inaltime AS "Înalțime"
FROM jucatori j
WHERE j.inaltime=
(SELECT min(inaltime)
FROM jucatori
WHERE varsta=j.varsta)
ORDER BY varsta
