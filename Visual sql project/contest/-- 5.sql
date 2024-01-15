-- 5. Valutazione del tempo in anni in cui viene gestita una spedizione con visualizzazione di "Più di un anno" o "Meno di un anno" in una colonna calcolata.
SELECT 
s.SpedizioneId,
s.DataSpedizione,
t.DataTransazione,

CASE
        WHEN DATEDIFF(NOW(), t.DataSpedizione) > 365 THEN 'Più di un anno'
        ELSE 'Meno di un anno'
    END AS ValutazioneTempo

FROM spedizioni_dataset s

JOIN transazioni t  ON s.SpedizioneID = t.SpedizioneID
