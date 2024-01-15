-- Analisi Spedizioni - Domanda: Trova il metodo di spedizione più utilizzato.
SELECT
GREATEST(
  
    COUNT(CASE WHEN MetodoSpedizione = 'Posta Prioritaria' THEN 1 END) AS ConteggioPostaPrioritaria,
    COUNT(CASE WHEN MetodoSpedizione = 'Corriere Express' THEN 1 END) AS ConteggioCorriereExpress
   AS MassimoConteggio
FROM spedizioni_dataset
