-- Miglior Mese per le Vendite - Domanda: Identifica il mese con il maggior importo totale delle vendite.
with VenditeTot as 
(SELECT 
MONTH(t.DataTransazione) as Mese, 
SUM(p.Prezzo * t.QuantitaAcquistata) as VenditaMensil
from transazioni t
join prodotti_dataset p on p.ProdottoID = t.ProdottoID
group by Mese 
order by Mese)

select Mese, VenditaMensil
from VenditeTot
WHERE venditaMensil = (select max(VenditaMensil) from VenditeTot)
