-- Analisi Categoria Prodotto - Domanda: Determina la categoria di prodotto con il maggior numero di vendite
SELECT 
p.Categoria,
SUM(t.QuantitaAcquistata) as maxvendite
FROM prodotti_dataset P
JOIN transazioni t

on p.ProdottoID = t.ProdottoID
GROUP BY p.Categoria
order by t.QuantitaAcquistata ASC
limit 1







