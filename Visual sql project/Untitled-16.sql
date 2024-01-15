-- Prodotti Rari - Domanda: Identifica i prodotti con una quantità disponibile inferiore alla media.
SELECT NomeProdotto, QuantitaDisponibile 

FROM prodotti_dataset

WHERE QuantitaDisponibile < (SELECT AVG(QuantitaDisponibile) FROM prodotti_dataset)