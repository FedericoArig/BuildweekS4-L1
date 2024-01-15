-- Cliente Fedele - Domanda: Identifica il cliente con il maggior valore totale di acquisti.
SELECT 
c.NomeCliente AS Cliente,
SUM(t.QuantitaAcquistata * p.Prezzo  ) AS ValoreTotale
FROM clienti_dataset1 c
JOIN transazioni t ON c.ClienteID = t.ClienteID
JOIN prodotti_dataset p ON p.ProdottoID = t.ProdottoID
GROUP BY Cliente
ORDER BY ValoreTotale DESC
LIMIT 1
