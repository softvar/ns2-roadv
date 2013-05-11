
BEGIN {

seqno = -1;

droppedPackets = 0;

receivedPackets = 0;

count = 0;

}

{

#packet delivery ratio

if($4 == "RTR" && $1 == "s" && seqno < $6) {
seqno = $6;
} else if(($4 == "RTR") && ($1 == "r")) {
receivedPackets++;

} else if ($1 == "D"){
droppedPackets++;
}

#end-to-end delay

if($4 == "RTR" && $1 == "s") {

start_time[$6] = $2;

} else if($1 == "r") {

end_time[$6] = $2;

} else if($1 == "D") {

end_time[$6] = -1;

}

}



END {

for(i=0; i<=seqno; i++) {

if(end_time[i] > 0) {
delay[i] = end_time[i] - start_time[i];
count++;
}
else
{
delay[i] = -1;

}

}
count = 10;
for(i=0; i<count; i++) {

if(delay[i] > 0) {

n_to_n_delay = n_to_n_delay + delay[i];

}
}

n_to_n_delay = n_to_n_delay/count;
print "\n";
print "ReceivedPackets = " receivedPackets;

print "Total Dropped Packets = " droppedPackets;

print "Average End-to-End Delay = " n_to_n_delay * 1000 " ms";

print "\n";

}
