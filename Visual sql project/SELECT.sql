SELECT 
  COUNT(*) as totaleSpedizioni,
  SUM(CASE WHEN StatusConsegna = 'Consegna Riuscita' THEN 1 ELSE 0 END) as consegneRiuscite,
  (SUM(CASE WHEN StatusConsegna = 'Consegna Riuscita' THEN 1 ELSE 0 END) * 100.0 / COUNT(*)) as percentualeRiuscite
FROM spedizioni_dataset;


