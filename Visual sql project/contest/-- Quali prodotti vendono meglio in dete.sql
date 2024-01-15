-- Quali prodotti vendono meglio in determinati periodi dell'anno?
SELECT 

p.NomeProdotto,
SUM(p.Prezzo * t.QuantitaAcquistata) as VenditaTot,
MONTH(T.DataTransazione) AS Mese

FROM prodotti_dataset p

JOIN transazioni T

on p.ProdottoID = t.ProdottoID

group by mese
order by mese DESC






