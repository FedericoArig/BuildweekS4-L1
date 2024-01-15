-- Analisi dei Clienti - Domanda: Calcola il numero medio di clienti registrati al mese.


with tab as (SELECT
MONTH(DataRegistrazione) as Mese,
COUNT(*) as Registrati
FROM clienti_dataset1
group by Mese
)
SELECT AVG(Registrati) as MediaMensRegistrati from tab

group by Mese


