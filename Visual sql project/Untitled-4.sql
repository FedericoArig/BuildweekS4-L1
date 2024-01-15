-- Analisi Cliente - Domanda: Trova il cliente che ha effettuato il maggior numero di acquisti.
SELECT 

c.NomeCliente, SUM(t.QuantitaAcquistata) as Quantita
From clienti_dataset1 c

join transazioni t

on c.ClienteID = t.ClienteID

GROUP BY NomeCliente
ORDER BY Quantita DESC

LIMIT 1;






