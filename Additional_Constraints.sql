alter table detalii_meciuri
alter column nr_spectatori numeric NOT NULL

alter table terenuri
add UNIQUE(denumire)

alter table terenuri
alter column oras varchar(15)

alter table meciuri
add constraint pct_marcate
check (pct_gazda >=0 AND pct_gazda<=150)

alter table meciuri
add constraint pct_marcate1
check (pct_oaspeti >=0 AND pct_oaspeti<=150)

alter table echipe
add anul_infiintarii numeric default 2000


