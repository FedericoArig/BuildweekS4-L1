-- Analisi Annuale delle Vendite - Domanda: Calcola il totale delle vendite per ogni anno.
SELECT 
YEAR(t.DataTransazione) AS Anno,
SUM(p.prezzo * t.QuantitaAcquistata) as TotaleVendite

from  prodotti_dataset p

join transazioni t 

on p.ProdottoID = t.ProdottoID

group by anno
order by anno



