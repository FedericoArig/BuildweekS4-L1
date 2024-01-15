SELECT MONTH(t.DataTransazione) as MESE, 
SUM(p.Prezzo * t.QuantitaAcquistata) as TOTALE_VENDITE 
FROM prodotti_dataset p
JOIN transazioni t ON t.ProdottoID = p.ProdottoID
GROUP BY MESE
ORDER BY MESE;

