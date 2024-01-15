-- 2. Selezione i primi 3 clienti che hanno il prezzo medio di acquisto più alto in ogni categoria di prodotto.
WITH tab1 AS (
    SELECT 
        c.Nomecliente AS Nome,
        p.Categoria AS Categoria,
        p.NomeProdotto AS NomeProdotto,
        SUM(p.prezzo * t.QuantitaAcquistata) AS ValoreMedioTot,
        ROW_NUMBER() OVER (PARTITION BY p.Categoria ORDER BY AVG(p.prezzo * t.QuantitaAcquistata) DESC) AS RowNum
    FROM transazioni t
    JOIN clienti_dataset1 c ON t.ClienteID = c.ClienteID
    JOIN prodotti_dataset p ON t.ProdottoID = p.ProdottoID
    GROUP BY c.Nomecliente, p.Categoria, p.NomeProdotto
)

SELECT 
    Nome,
    Categoria,
    NomeProdotto,
    ValoreMedioTot
FROM tab1
WHERE RowNum <= 3
ORDER BY Categoria, RowNum;


