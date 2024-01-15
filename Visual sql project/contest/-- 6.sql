-- 6. Totale delle disponibilità in magazzino dei prodotti divisi per categoria

SELECT 
NomeProdotto,
QuantitaDisponibile,
Categoria

from prodotti_dataset


order by Categoria
