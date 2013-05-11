ns2-roadv
=========

Randomized AODV (R-AODV) Protocol
---------------------------------

AODV protocol is extended with a drop factor that induces a randomness feature
to result in Randomized Ad-Hoc On-Demand Routing (R-AODV) protocol. Dur-
ing the route discovery process, every intermediary or router nodes between the
source and the destination nodes makes a decision to either broadcast/forward
the RREQ packet further towards the destination or drop it. Before forwarding
a RREQ packet, every node computes the drop factorwhich is a function of the
inverse of the number of hop counts traversed by the RREQ packet. This drop
factor lies in the range of 0 to 1. Also, the node generates a random number
from 0 to 1. If this random number is higher than the drop factor, the node
forwards the RREQ packet. Otherwise, the RREQ packet is dropped. Dropping
of RREQ packets does not necessarily result in a new route discovery process
by the source node. This is due to the fact that the original broadcast by the
source node results in multiple RREQ packets via the neighbors and this dif-
fusing wave results quickly in a large number of RREQ packets traversing the
network in search of the destination. A major proportion of these packets are
redundant due to the fact that in the ideal case, a single RREQ packet can
find the best route. Also, a number of these packets diffusing in directions away
from the destination shall eventually timeout. Hence, in R-AODV, the aim is to
minimize on these redundant RREQ packets, or alternatively, drop as much as
possible of these redundant RREQ packets. The drop policy is conservative and
its value becomes lesser with higher number of hops. As RREQ packets get near
the destination node, the chances of survival of RREQ packets is higher. Hence,
the first phase of the route discovering process, that is, finding the destination
node, is completed as soon as possible and a RREP packet can be transmitted
from the destination node back to the source node.


In R-AODV, the dropping of redundant RREQ packets reduces a proportion
of RREQ packets that shall never reach the destination node, resulting in a de-
crease of network congestion. Hence, the ratio of the number of packets received
by the nodes to the number of packets sent by the nodes, namely, throughput,
should be higher in R-AODV compared to AODV.
The following algorithm is used in the decision making process of whether to
drop the RREQ packets by the intermediary or routing nodes.

Algorithm
---------

Step 1: Calculate drop_factor

drop_factor = (1/(Hop_count_of_RREQ_packet + 1))

Step 2: Calculate a random value in the range of 0 to 1.

Step 3: If (random_value > drop_factor) then broadcast/forward RREQ_packet
else drop RREQ_packet
