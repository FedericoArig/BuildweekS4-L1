SELECT 
p.Categoria,
AVG(p.Prezzo * t.QuantitaAcquistata) as PrezzoMedio
FROM prodotti_dataset P
JOIN Transazioni t
on p.prodottoId = t.ProdottoID
GROUP BY p.Categoria


