-- trovami tutti i clienti che si sono registrati nel mese con più profitto 
with VenditeTot as 
(SELECT 
MONTH(t.DataTransazione) as Mese, 
SUM(p.Prezzo * t.QuantitaAcquistata) as VenditaMensil
from transazioni t
join prodotti_dataset p on p.ProdottoID = t.ProdottoID
group by Mese 
order by Mese)


SELECT 
    c.*
FROM clienti_dataset1 c
JOIN transazioni t ON c.ClienteID = t.ClienteID
JOIN VenditeTot vt ON MONTH(t.DataTransazione) = vt.Mese
WHERE vt.VenditaMensil = (SELECT MAX(VenditaMensil) FROM VenditeTot)