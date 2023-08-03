CREATE VIEW arbitrii_meciuri
AS SELECT m.id_meci AS "ID Meci", m.gazda AS "Echipa gazda", m.oaspeti AS "Echipa oaspete", 
m.pct_gazda AS "Puncte marcate de gazde", m.pct_oaspeti AS "Puncte marcate de oaspeti", 
a.nume AS "Numele arbitrului", a.prenume AS "Prenumele arbitrului" 
FROM meciuri m JOIN arbitrii a
ON m.id_arbitru=a.id

CREATE VIEW echipe_detalii_meciuri
AS SELECT m.gazda AS "Echipa gazda", m.oaspeti AS "Echipa oaspete", m.pct_gazda AS "Puncte marcate de gazda", 
m.pct_oaspeti AS "Puncte marcate de oaspeti", d.cosuri_2p AS "Cosuri marcate de 2 pct", d.cosuri_3p AS "Cosuri marcate de 3 pct", 
d.nr_libere AS "Numar libere marcate", d.id_jucat_eliminati AS "ID jucatori eliminati", d.nr_spectatori AS "Numar de spectatori prezenti"
FROM meciuri m JOIN detalii_meciuri d
ON m.id_meci=d.id_game

CREATE VIEW nume_echipa_pt_jucat_elim
AS SELECT d.id_jucat_eliminati AS "ID jucatori eliminati", j.nume AS "Nume jucator", 
j.prenume AS "Prenume jucator", e.nume AS "Numele echipei"
FROM detalii_meciuri d JOIN jucatori j
ON d.id_jucat_eliminati=j.id_jucator
JOIN echipe e
ON j.nume_echipa=e.nume


CREATE VIEW nr_wins_echipa_pt_jucat_elim
AS SELECT d.id_jucat_eliminati AS "ID jucatori eliminati", j.nume AS "Nume jucator", 
j.prenume AS "Prenume jucator", e.nume AS "Numele echipei", e.nr_victorii AS "Numarul de victorii"
FROM detalii_meciuri d JOIN jucatori j
ON d.id_jucat_eliminati=j.id_jucator
JOIN echipe e
ON j.nume_echipa=e.nume


