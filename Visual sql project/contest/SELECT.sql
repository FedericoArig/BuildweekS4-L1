SELECT
    tr.ProdottoID,
    tr.NomeProdotto,
    tr.MediaRating,
    c.NomeCliente
FROM (
    SELECT
        vp.ProdottoID,
        vp.NomeProdotto,
        vp.MediaRating,
        MAX(r.Rating) AS RatingMassimo
    FROM (
        SELECT
            p.ProdottoID,
            p.NomeProdotto,
            AVG(r.Rating) AS MediaRating
        FROM
            Prodotto p
        LEFT JOIN Rating r ON p.ProdottoID = r.ProdottoID
        GROUP BY
            p.ProdottoID, p.NomeProdotto
    ) vp
    LEFT JOIN Rating r ON vp.ProdottoID = r.ProdottoID AND vp.MediaRating = r.Rating
    GROUP BY
        vp.ProdottoID, vp.NomeProdotto, vp.MediaRating
) tr
JOIN Rating r ON tr.ProdottoID = r.ProdottoID AND tr.RatingMassimo = r.Rating
JOIN Cliente c ON r.ClienteID = c.ClienteID;