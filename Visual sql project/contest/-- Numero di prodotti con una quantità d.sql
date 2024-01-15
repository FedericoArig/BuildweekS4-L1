 -- Numero di prodotti con una quantità disponibile inferiore alla media.

SELECT

count(*) 
  
from prodotti_dataset
where QuantitaDisponibile < (SELECT AVG(QuantitaDisponibile) from prodotti_dataset)