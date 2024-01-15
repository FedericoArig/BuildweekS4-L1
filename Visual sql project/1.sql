SELECT 
COUNT(StatusConsegna) as totRiuscite,
FROM spedizioni_dataset
WHERE StatusConsegna = 'Consegna Riuscita'
