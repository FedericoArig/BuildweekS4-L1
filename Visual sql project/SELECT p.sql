SELECT p.NomeProdotto,
AVG(r.Rating) as MediaRecensione FROM prodotti_dataset p
join recensioni_prodotti r on r.ProdottoID = p.ProdottoID
GROUP BY p.NomeProdotto
ORDER BY MediaRecensione DESC
