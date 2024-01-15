-- Analisi dei Prodotti per Cliente - Domanda: Per ogni cliente, elenca i prodotti acquistati e il totale speso.
SELECT c.NomeCliente, SUM(t.QuantitaAcquistata) as Quantita ,SUM(p.Prezzo * t.QuantitaAcquistata) as SpesaTot 
from transazioni t 
join clienti_dataset1 c on c.ClienteID = t.ClienteID
join prodotti_dataset p on p.ProdottoID = t.ProdottoID

GROUP BY c.NomeCliente