WITH VenditeMensili AS (
    SELECT 
        MONTH(t.DataTransazione) AS Mese, 
        SUM(p.Prezzo * t.QuantitaAcquistata) AS ValoreTotale
    FROM 
        transazioni t 
        JOIN prodotti_dataset p ON p.ProdottoID = t.ProdottoID
    GROUP BY Mese
)

SELECT 
    Mese,
    ValoreTotale,
    ((ValoreTotale - LAG(ValoreTotale) OVER (ORDER BY Mese)) / NULLIF(LAG(ValoreTotale) OVER (ORDER BY Mese), 0)) * 100.0 AS VariazionePercentuale