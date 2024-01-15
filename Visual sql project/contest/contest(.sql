-- 4. Media delle recensioni dei clienti il cui tempo di elaborazione dell'ordine è inferiore a 30gg 

with tab1 as (
SELECT

t.ClienteID, s.MetodoSpedizione,
DATEDIFF(s.DataSpedizione, t.DataTransazione) as TempoElabo
from spedizioni_dataset s

join transazioni t

on  s.SpedizioneID = t.SpedizioneID

order by t.ClienteID
)

SELECT

t.ClienteID
AVG(TempoElabo) as mediatemp_el

from tab1
join racensioni_prodotti r on r.CustomerId= t.ClienteID
where TempoElabo <300
order by t.ClienteID

