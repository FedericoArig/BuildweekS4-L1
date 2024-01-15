-- Prodotti più Venduti - Domanda: Identifica i tre prodotti più venduti e la loro quantità venduta.
SELECT p.NomeProdotto, SUM(t.QuantitaAcquistata) as Quantita
FROM prodotti_dataset p 
JOIN transazioni t
ON p. ProdottoID = t.ProdottoID
GROUP BY p.NomeProdotto
ORDER BY Quantita DESC 
LIMIT 3
