set a 1
while {$a == 1 } {
puts "Enter the Routing Agents in mobile networking"
puts "1. AODV" 
puts "2. DSDV" 
puts "3. DSR" 
 
set top [gets stdin]
if {$top == 1} {
set opt(chan)           Channel/WirelessChannel    ;# channel type 
set opt(prop)           Propagation/TwoRayGround   ;# radio-propagation model 
set opt(netif)          Phy/WirelessPhy            ;# network interface type 
set opt(mac)            Mac/802_11                 ;# MAC type 
set opt(ifq)            Queue/DropTail/PriQueue    ;# interface queue type 
set opt(ll)             LL                         ;# link layer type 
set opt(ant)            Antenna/OmniAntenna        ;# antenna model 
set opt(ifqlen)         50                         ;# max packet in ifq 
set opt(nn)             22                         ;# number of mobilenodes 
set opt(rp)             AODV                       ;# routing protocol 
set opt(x)              1800   			   ;# X dimension of topography 
set opt(y)              840   			   ;# Y dimension of topography   

### Setting The Simulator Objects
                  
      set ns_ [new Simulator]
#create the nam and trace file:
      set tracefd [open aodv.tr w]
      $ns_ trace-all $tracefd

      set namtrace [open aodv.nam w]
      $ns_ namtrace-all-wireless $namtrace  $opt(x) $opt(y)

      set topo [new Topography]
      $topo load_flatgrid $opt(x) $opt(y)
      create-god $opt(nn)
      set chan_1_ [new $opt(chan)]
      
####  Setting The Distance Variables
                       

      # For model 'TwoRayGround'
      set dist(5m)  7.69113e-06
      set dist(9m)  2.37381e-06
      set dist(10m) 1.92278e-06
      set dist(11m) 1.58908e-06
      set dist(12m) 1.33527e-06
      set dist(13m) 1.13774e-06
      set dist(14m) 9.81011e-07
      set dist(15m) 8.54570e-07
      set dist(16m) 7.51087e-07
      set dist(20m) 4.80696e-07
      set dist(25m) 3.07645e-07
      set dist(30m) 2.13643e-07
      set dist(35m) 1.56962e-07
      set dist(40m) 1.56962e-10
      set dist(45m) 1.56962e-11
      set dist(50m) 1.20174e-13
      Phy/WirelessPhy set CSThresh_ $dist(50m)
      Phy/WirelessPhy set RXThresh_ $dist(50m)

#  Defining Node Configuration
                        
                  $ns_ node-config -adhocRouting $opt(rp) \
                   -llType $opt(ll) \
                   -macType $opt(mac) \
                   -ifqType $opt(ifq) \
                   -ifqLen $opt(ifqlen) \
                   -antType $opt(ant) \
                   -propType $opt(prop) \
                   -phyType $opt(netif) \
                   -topoInstance $topo \
                   -agentTrace ON \
                   -routerTrace ON \
                   -macTrace ON \
                   -movementTrace ON \
                   -channel $chan_1_

###  Creating The WIRELESS NODES
                  
      set Server1 [$ns_ node]
      set Server2 [$ns_ node]
      set n2 [$ns_ node]
      set n3 [$ns_ node]
      set n4 [$ns_ node]
      set n5 [$ns_ node]
      set n6 [$ns_ node]
      set n7 [$ns_ node]
      set n8 [$ns_ node]
      set n9 [$ns_ node]
      set n10 [$ns_ node]
      set n11 [$ns_ node]
      set n12 [$ns_ node]
      set n13 [$ns_ node]
      set n14 [$ns_ node]
      set n15 [$ns_ node]
      set n16 [$ns_ node]
      set n17 [$ns_ node]
      set n18 [$ns_ node]
      set n19 [$ns_ node]
      set n20 [$ns_ node]
      set n21 [$ns_ node]
      set n22 [$ns_ node]
      
      set opt(seed) 0.1
      set a [ns-random $opt(seed)]
      set i 0
      while {$i < 5} {
      incr i
      }
            

###  Setting The Initial Positions of Nodes

      $Server1 set X_ 513.0
      $Server1 set Y_ 517.0
      $Server1 set Z_ 0.0
      
      $Server2 set X_ 1445.0
      $Server2 set Y_ 474.0
      $Server2 set Z_ 0.0
      
      $n2 set X_ 36.0
      $n2 set Y_ 529.0
      $n2 set Z_ 0.0

      $n3 set X_ 143.0
      $n3 set Y_ 666.0
      $n3 set Z_ 0.0

      $n4 set X_ 201.0
      $n4 set Y_ 552.0
      $n4 set Z_ 0.0
      
      $n5 set X_ 147.0
      $n5 set Y_ 403.0
      $n5 set Z_ 0.0
      
      $n6 set X_ 230.0
      $n6 set Y_ 291.0
      $n6 set Z_ 0.0

      $n7 set X_ 295.0
      $n7 set Y_ 419.0
      $n7 set Z_ 0.0

      $n8 set X_ 363.0
      $n8 set Y_ 335.0
      $n8 set Z_ 0.0

      $n9 set X_ 334.0
      $n9 set Y_ 647.0
      $n9 set Z_ 0.0

      $n10 set X_ 304.0
      $n10 set Y_ 777.0
      $n10 set Z_ 0.0
      
      $n11 set X_ 412.0
      $n11 set Y_ 194.0
      $n11 set Z_ 0.0
      
      $n12 set X_ 519.0
      $n12 set Y_ 361.0
      $n12 set Z_ 0.0

      $n13 set X_ 569.0
      $n13 set Y_ 167.0
      $n13 set Z_ 0.0

      $n14 set X_ 349.0
      $n14 set Y_ 546.0
      $n14 set Z_ 0.0

      $n15 set X_ 466.0
      $n15 set Y_ 668.0
      $n15 set Z_ 0.0

      $n16 set X_ 489.0
      $n16 set Y_ 794.0
      $n16 set Z_ 0.0

      $n17 set X_ 606.0
      $n17 set Y_ 711.0
      $n17 set Z_ 0.0

      $n18 set X_ 630.0
      $n18 set Y_ 626.0
      $n18 set Z_ 0.0

      $n19 set X_ 666.0
      $n19 set Y_ 347.0
      $n19 set Z_ 0.0

      $n20 set X_ 741.0
      $n20 set Y_ 152.0
      $n20 set Z_ 0.0

      $n21 set X_ 882.0
      $n21 set Y_ 264.0
      $n21 set Z_ 0.0
      
      $n22 set X_ 761.0
      $n22 set Y_ 441.0
      $n22 set Z_ 0.0
      
      ## Giving Mobility to Nodes
      
      $ns_ at 0.75 "$n2 setdest 379.0 349.0 20.0"
      $ns_ at 0.75 "$n3 setdest 556.0 302.0 20.0"
      $ns_ at 0.20 "$n4 setdest 309.0 211.0 20.0"
      $ns_ at 1.25 "$n5 setdest 179.0 333.0 20.0"
      $ns_ at 0.75 "$n6 setdest 139.0 63.0 20.0"
      $ns_ at 0.75 "$n7 setdest 320.0 27.0 20.0"
      $ns_ at 1.50 "$n8 setdest 505.0 124.0 20.0"
      $ns_ at 1.25 "$n9 setdest 274.0 487.0 20.0"
      $ns_ at 1.25 "$n10 setdest 494.0 475.0 20.0"
      $ns_ at 1.25 "$n11 setdest 899.0 757.0 25.0"
      $ns_ at 0.50 "$n12 setdest 598.0 728.0 25.0"
      $ns_ at 0.25 "$n13 setdest 551.0 624.0 25.0"
      $ns_ at 1.25 "$n14 setdest 397.0 647.0 25.0"
      $ns_ at 1.25 "$n15 setdest 748.0 688.0 25.0"
      $ns_ at 1.25 "$n16 setdest 842.0 623.0 25.0"
      $ns_ at 1.25 "$n17 setdest 678.0 548.0 25.0"
      $ns_ at 0.75 "$n18 setdest 741.0 809.0 20.0"
      $ns_ at 0.75 "$n19 setdest 437.0 799.0 20.0"
      $ns_ at 0.20 "$n20 setdest 159.0 722.0 20.0"
      $ns_ at 1.25 "$n21 setdest 700.0 350.0 20.0"
      $ns_ at 0.75 "$n22 setdest 839.0 444.0 20.0"
            
      ## Setting The Node Size
                              
      $ns_ initial_node_pos $Server1 125
      $ns_ initial_node_pos $Server2 125
      $ns_ initial_node_pos $n2 70
      $ns_ initial_node_pos $n3 70
      $ns_ initial_node_pos $n4 40
      $ns_ initial_node_pos $n5 70
      $ns_ initial_node_pos $n6 70
      $ns_ initial_node_pos $n7 70
      $ns_ initial_node_pos $n8 70
      $ns_ initial_node_pos $n9 70
      $ns_ initial_node_pos $n10 70
      $ns_ initial_node_pos $n11 70
      $ns_ initial_node_pos $n12 70
      $ns_ initial_node_pos $n13 70
      $ns_ initial_node_pos $n14 70
      $ns_ initial_node_pos $n15 70
      $ns_ initial_node_pos $n16 70
      $ns_ initial_node_pos $n17 70
      $ns_ initial_node_pos $n18 70
      $ns_ initial_node_pos $n19 70
      $ns_ initial_node_pos $n20 70
      $ns_ initial_node_pos $n21 70
      $ns_ initial_node_pos $n22 70
      

      #### Setting The Labels For Nodes
      
      $ns_ at 0.0 "$Server1 label Server1"
      $ns_ at 0.0 "$Server2 label Server2"
      
      $ns_ at 0.0 "$n2 label node2"
      $ns_ at 0.0 "$n3 label node3"
      $ns_ at 0.0 "$n4 label node4"
      $ns_ at 0.0 "$n5 label node5"
      $ns_ at 0.0 "$n6 label node6"
      $ns_ at 0.0 "$n7 label node7"
      $ns_ at 0.0 "$n8 label node8"
      $ns_ at 0.0 "$n9 label node9"
      $ns_ at 0.0 "$n10 label node10"
      $ns_ at 0.0 "$n11 label node11"
      $ns_ at 0.0 "$n12 label node12"
      $ns_ at 0.0 "$n13 label node13"
      $ns_ at 0.0 "$n14 label node14"
      $ns_ at 0.0 "$n15 label node15"
      $ns_ at 0.0 "$n16 label node16"
      $ns_ at 0.0 "$n17 label node17"
      $ns_ at 0.0 "$n18 label node18"
      $ns_ at 0.0 "$n19 label node19"
      $ns_ at 0.0 "$n20 label node20"
      $ns_ at 0.0 "$n20 label node21"
      $ns_ at 0.0 "$n22 label node22"

      $n2 color green
      $ns_ at 0.0 "$n2 color green"
      
      $n3 color green
      $ns_ at 0.0 "$n3 color green"
      
      $n4 color green
      $ns_ at 0.0 "$n4 color green"
      
      $n5 color green
      $ns_ at 0.0 "$n5 color green"
      
      $n6 color green
      $ns_ at 0.0 "$n6 color green"
      
      $n7 color green
      $ns_ at 0.0 "$n7 color green"
      
      $n8 color green
      $ns_ at 0.0 "$n8 color green"

      $n9 color yellow
      $ns_ at 0.0 "$n9 color yellow"
      
      $n10 color yellow
      $ns_ at 0.0 "$n10 color yellow"

      $n11 color yellow
      $ns_ at 0.0 "$n11 color yellow"
      
      $n12 color pink
      $ns_ at 0.0 "$n12 color pink"
      
      $n13 color pink
      $ns_ at 0.0 "$n13 color pink"

      $n14 color pink
      $ns_ at 0.0 "$n14 color pink"

      $n15 color pink
      $ns_ at 0.0 "$n15 color pink"

      $n16 color pink
      $ns_ at 0.0 "$n16 color pink"

      $n17 color orange
      $ns_ at 0.0 "$n17 color orange"

      $n18 color orange
      $ns_ at 0.0 "$n18 color orange"

      $n19 color orange
      $ns_ at 0.0 "$n19 color orange"

      $n20 color orange
      $ns_ at 0.0 "$n20 color orange"

      $n21 color orange
      $ns_ at 0.0 "$n21 color orange"

      $n22 color orange
      $ns_ at 0.0 "$n22 color orange"

      $Server1 color maroon
      $ns_ at 0.0 "$Server1 color maroon"
      
      $Server2 color maroon
      $ns_ at 0.0 "$Server2 color maroon"

      ## SETTING ANIMATION RATE 
$ns_ at 0.0 "$ns_ set-animation-rate 12.5ms"

   #  COLORING THE NODES  
$n9 color blue
$ns_ at 4.71 "$n9 color blue"
$n5 color blue
$ns_ at 7.0 "$n5 color blue"
$n2 color blue
$ns_ at 7.29 "$n2 color blue"

$n16 color blue
$ns_ at 7.59 "$n16 color blue"

$n9 color maroon
$ns_ at 7.44 "$n9 color maroon"

$ns_ at 7.43 "$n9 label TTLover"
$ns_ at 7.55 "$n9 label \"\""

$n12 color blue
$ns_ at 7.85 "$n12 color blue"
                  
####  Establishing Communication

      set udp0 [$ns_ create-connection UDP $Server1 LossMonitor $n18 0]
      $udp0 set fid_ 1
      set cbr0 [$udp0 attach-app Traffic/CBR]
      $cbr0 set packetSize_ 1000    
      $cbr0 set interopt_ .07
      $ns_ at 0.0 "$cbr0 start"
      $ns_ at 4.0 "$cbr0 stop"
      
      set udp1 [$ns_ create-connection UDP $Server1 LossMonitor $n22 0]
      $udp1 set fid_ 1
      set cbr1 [$udp1 attach-app Traffic/CBR]
      $cbr1 set packetSize_ 1000    
      $cbr1 set interopt_ .07
      $ns_ at 0.1 "$cbr1 start"
      $ns_ at 4.1 "$cbr1 stop"
      
      
      set udp2 [$ns_ create-connection UDP $n21 LossMonitor $n20 0]
      $udp2 set fid_ 1
      set cbr2 [$udp2 attach-app Traffic/CBR]
      $cbr2 set packetSize_ 1000    
      $cbr2 set interopt_ .07
      $ns_ at 2.4 "$cbr2 start"
      $ns_ at 4.1 "$cbr2 stop"
      
      set udp3 [$ns_ create-connection UDP $Server1 LossMonitor $n15 0]
      $udp3 set fid_ 1
      set cbr3 [$udp3 attach-app Traffic/CBR]
      $cbr3 set packetSize_ 1000    
      $cbr3 set interopt_ 5
      $ns_ at 4.0 "$cbr3 start"
      $ns_ at 4.1 "$cbr3 stop"
      
      set udp4 [$ns_ create-connection UDP $Server1 LossMonitor $n14 0]
      $udp4 set fid_ 1
      set cbr4 [$udp4 attach-app Traffic/CBR]
      $cbr4 set packetSize_ 1000    
      $cbr4 set interopt_ 5
      $ns_ at 4.0 "$cbr4 start"
      $ns_ at 4.1 "$cbr4 stop"
      
      set udp5 [$ns_ create-connection UDP $n15 LossMonitor $n16 0]
      $udp5 set fid_ 1
      set cbr5 [$udp5 attach-app Traffic/CBR]
      $cbr5 set packetSize_ 1000    
      $cbr5 set interopt_ 5
      $ns_ at 4.0 "$cbr5 start"
      $ns_ at 4.1 "$cbr5 stop"
      
      set udp6 [$ns_ create-connection UDP $n15 LossMonitor $n17 0]
      $udp6 set fid_ 1
      set cbr6 [$udp6 attach-app Traffic/CBR]
      $cbr6 set packetSize_ 1000    
      $cbr6 set interopt_ 5
      $ns_ at 4.0 "$cbr6 start"
      $ns_ at 4.1 "$cbr6 stop"
            
      set udp7 [$ns_ create-connection UDP $n14 LossMonitor $n4 0]
      $udp7 set fid_ 1
      set cbr7 [$udp7 attach-app Traffic/CBR]
      $cbr7 set packetSize_ 1000    
      $cbr7 set interopt_ 5
      $ns_ at 4.0 "$cbr7 start"
      $ns_ at 4.1 "$cbr7 stop"
      
      set udp8 [$ns_ create-connection UDP $n14 LossMonitor $n9 0]
      $udp8 set fid_ 1
      set cbr8 [$udp8 attach-app Traffic/CBR]
      $cbr8 set packetSize_ 1000    
      $cbr8 set interopt_ 5
      $ns_ at 4.0 "$cbr8 start"
      $ns_ at 4.1 "$cbr8 stop"
      
      set udp9 [$ns_ create-connection UDP $n4 LossMonitor $n3 0]
      $udp9 set fid_ 1
      set cbr9 [$udp9 attach-app Traffic/CBR]
      $cbr9 set packetSize_ 1000    
      $cbr9 set interopt_ 5
      $ns_ at 4.0 "$cbr9 start"
      $ns_ at 4.1 "$cbr9 stop"
      
      set udp10 [$ns_ create-connection UDP $n4 LossMonitor $n2 0]
      $udp10 set fid_ 1
      set cbr10 [$udp10 attach-app Traffic/CBR]
      $cbr10 set packetSize_ 1000   
      $cbr10 set interopt_ 5
      $ns_ at 4.0 "$cbr10 start"
      $ns_ at 4.1 "$cbr10 stop"
      
      set udp11 [$ns_ create-connection UDP $n9 LossMonitor $n16 0]
      $udp11 set fid_ 1
      set cbr11 [$udp11 attach-app Traffic/CBR]
      $cbr11 set packetSize_ 1000   
      $cbr11 set interopt_ 5
      $ns_ at 4.0 "$cbr11 start"
      $ns_ at 4.1 "$cbr11 stop"
      
      set udp12 [$ns_ create-connection UDP $n9 LossMonitor $n10 0]
      $udp12 set fid_ 1
      set cbr12 [$udp12 attach-app Traffic/CBR]
      $cbr12 set packetSize_ 1000   
      $cbr12 set interopt_ 5
      $ns_ at 4.0 "$cbr12 start"
      $ns_ at 4.1 "$cbr12 stop"

      #ANNOTATIONS DETAILS 

      $ns_ at 0.0 "$ns_ trace-annotate \"MOBILE NODE MOVEMENTS\""
      $ns_ at 4.1 "$ns_ trace-annotate \"NODE27 CACHE THE DATA FRO SERVER\""
      #$ns_ at 4.59 "$ns_ trace-annotate \"PACKET LOSS AT NODE27\""     
      $ns_ at 4.71 "$ns_ trace-annotate \"NODE10 CACHE THE DATA\""      
            
      ### PROCEDURE TO STOP 

      proc stop {} {
            
                        global ns_ tracefd
                        $ns_ flush-trace
                        close $tracefd
                        exec nam aodv.nam &            
                        exit 0

                   }

      puts "Starting Simulation........"
      $ns_ at 25.0 "stop"
      $ns_ run
           

	
} elseif {$top == 2} {
# Define options 
set val(chan)           Channel/WirelessChannel    ;# channel type 
set val(prop)           Propagation/TwoRayGround   ;# radio-propagation model 
set val(netif)          Phy/WirelessPhy            ;# network interface type 
set val(mac)            Mac/802_11                 ;# MAC type 
set val(ifq)            Queue/DropTail/PriQueue    ;# interface queue type 
set val(ll)             LL                         ;# link layer type 
set val(ant)            Antenna/OmniAntenna        ;# antenna model 
set val(ifqlen)         50                         ;# max packet in ifq 
set val(nn)             7                          ;# number of mobilenodes 
set val(rp)             DSDV                       ;# routing protocol 
set val(x)              500   			   ;# X dimension of topography 
set val(y)              400   			   ;# Y dimension of topography   
set val(stop)		100			   ;# time of simulation end 
set ns		  [new Simulator] 
set tracefd       [open dsdv.tr w] 
set namtrace      [open dsdv.nam w] 
$ns use-newtrace 
$ns trace-all $tracefd 
$ns namtrace-all-wireless $namtrace $val(x) $val(y) 
 
 

Antenna/OmniAntenna set X_ 0
Antenna/OmniAntenna set Y_ 0
Antenna/OmniAntenna set Z_ 1.5
Antenna/OmniAntenna set Gt_ 1.0
Antenna/OmniAntenna set Gr_ 1.0


# set up topography object 
set topo       [new Topography] 
 
$topo load_flatgrid $val(x) $val(y) 
 
create-god $val(nn) 
 
# 
#  Create nn mobilenodes [$val(nn)] and attach them to the channel.  
# 
 
# configure the nodes 
$ns node-config -adhocRouting $val(rp) \
	-llType $val(ll) \
	-macType $val(mac) \
	-ifqType $val(ifq) \
	-ifqLen $val(ifqlen) \
	-antType $val(ant) \
	-propType $val(prop) \
	-phyType $val(netif) \
	-channelType $val(chan) \
	-topoInstance $topo \
	-agentTrace ON \
	-routerTrace ON \
	-macTrace OFF \
	-movementTrace ON
		  
	for {set i 0} {$i < $val(nn) } { incr i } { 
		set node_($i) [$ns node]	 
	} 
 
# Provide initial location of mobilenodes 
$node_(0) set X_ 5.0 
$node_(0) set Y_ 5.0 
$node_(0) set Z_ 0.0 
 
$node_(1) set X_ 490.0 
$node_(1) set Y_ 285.0 
$node_(1) set Z_ 0.0 
 
$node_(2) set X_ 150.0 
$node_(2) set Y_ 240.0 
$node_(2) set Z_ 0.0 
 
$node_(3) set X_ 250.0 
$node_(3) set Y_ 240.0 
$node_(3) set Z_ 0.0 
 
$node_(4) set X_ 180.0 
$node_(4) set Y_ 70.0 
$node_(4) set Z_ 0.0 

$node_(5) set X_ 100.0 
$node_(5) set Y_ 70.0 
$node_(5) set Z_ 0.0  
 
$node_(6) set X_ 380.0 
$node_(6) set Y_ 70.0 
$node_(6) set Z_ 0.0  
 
# Generation of movements 
$ns at 10.0 "$node_(0) setdest 250.0 250.0 10.0" 
$ns at 15.0 "$node_(1) setdest 45.0 285.0 10.0" 
$ns at 29.0 "$node_(2) setdest 480.0 300.0 10.0"  
$ns at 70.0 "$node_(3) setdest 180.0 30.0 10.0"  
$ns at 80.0 "$node_(4) setdest 80.0 30.0 10.0"  
$ns at 90.0 "$node_(5) setdest 98.0 30.0 10.0"  
$ns at 80.0 "$node_(6) setdest 50.0 30.0 10.0"  
 
# Set a TCP connection between node_(0) and node_(1) 
set tcp [new Agent/TCP]
set sink [new Agent/TCPSink] 
$ns attach-agent $node_(0) $tcp 
$ns attach-agent $node_(1) $sink 
$ns connect $tcp $sink 
set ftp [new Application/FTP] 
$ftp attach-agent $tcp 
$ns at 10.0 "$ftp start"  
 

# Set a TCP connection between node_(0) and node_(2) 
set tcp [new Agent/TCP]
set sink [new Agent/TCPSink] 
$ns attach-agent $node_(0) $tcp 
$ns attach-agent $node_(2) $sink 
$ns connect $tcp $sink 
set ftp [new Application/FTP] 
$ftp attach-agent $tcp 
$ns at 10.0 "$ftp start"  

# Set a TCP connection between node_(0) and node_(3) 
set tcp [new Agent/TCP]
set sink [new Agent/TCPSink] 
$ns attach-agent $node_(0) $tcp 
$ns attach-agent $node_(3) $sink 
$ns connect $tcp $sink 
set ftp [new Application/FTP] 
$ftp attach-agent $tcp 
$ns at 10.0 "$ftp start"  

# Set a TCP connection between node_(0) and node_(4) 
set tcp [new Agent/TCP]
set sink [new Agent/TCPSink] 
$ns attach-agent $node_(0) $tcp 
$ns attach-agent $node_(4) $sink 
$ns connect $tcp $sink 
set ftp [new Application/FTP] 
$ftp attach-agent $tcp 
$ns at 10.0 "$ftp start"  

# Set a TCP connection between node_(0) and node_(5) 
set tcp [new Agent/TCP]
set sink [new Agent/TCPSink] 
$ns attach-agent $node_(0) $tcp 
$ns attach-agent $node_(5) $sink 
$ns connect $tcp $sink 
set ftp [new Application/FTP] 
$ftp attach-agent $tcp 
$ns at 10.0 "$ftp start"  

# Set a TCP connection between node_(0) and node_(6) 
set tcp [new Agent/TCP]
set sink [new Agent/TCPSink] 
$ns attach-agent $node_(0) $tcp 
$ns attach-agent $node_(6) $sink 
$ns connect $tcp $sink 
set ftp [new Application/FTP] 
$ftp attach-agent $tcp 
$ns at 10.0 "$ftp start"  

 
# Define node initial position in nam 
for {set i 0} {$i < $val(nn)} { incr i } { 
# 30 defines the node size for nam 
$ns initial_node_pos $node_($i) 30 
} 
 
# Telling nodes when the simulation ends 
for {set i 0} {$i < $val(nn) } { incr i } { 
    $ns at $val(stop) "$node_($i) reset"; 
} 
 
# ending nam and the simulation  
$ns at $val(stop) "$ns nam-end-wireless $val(stop)" 
$ns at $val(stop) "stop" 
$ns at 150.01 "puts \"end simulation\" ; $ns halt" 
proc stop {} { 
    global ns tracefd namtrace 
    $ns flush-trace 
    close $tracefd 
    close $namtrace 
    #Execute nam on the trace file 
    exec nam dsdv.nam & 
    exit 0 
} 
 
$ns run
	
} elseif {$top == 3} {
set opt(chan)           Channel/WirelessChannel    ;# channel type 
set opt(prop)           Propagation/TwoRayGround   ;# radio-propagation model 
set opt(netif)          Phy/WirelessPhy            ;# network interface type 
set opt(mac)            Mac/802_11                 ;# MAC type 
set opt(ifq)            Queue/DropTail/PriQueue    ;# interface queue type 
set opt(ll)             LL                         ;# link layer type 
set opt(ant)            Antenna/OmniAntenna        ;# antenna model 
set opt(ifqlen)         50                         ;# max packet in ifq 
set opt(nn)             3                         ;# number of mobilenodes 
set opt(rp)             DSR                       ;# routing protocol
set opt(x)              500   			   ;# X dimension of topography 
set opt(y)              400 			   ;# Y dimension of topography   
set opt(stop)		150                         ;
set ns              [new Simulator]
#Creating trace file and nam file 
set tracefd       [open Dsr.tr w]

set namtrace      [open dsr.nam w]    

$ns trace-all $tracefd
$ns namtrace-all-wireless $namtrace $opt(x) $opt(y)

# set up topography object
set topo       [new Topography]

$topo load_flatgrid $opt(x) $opt(y)

create-god $opt(nn)

# configure the nodes
        $ns node-config -adhocRouting $opt(rp) \
                   -llType $opt(ll) \
                   -macType $opt(mac) \
                   -ifqType $opt(ifq) \
                   -ifqLen $opt(ifqlen) \
                   -antType $opt(ant) \
                   -propType $opt(prop) \
                   -phyType $opt(netif) \
                   -channelType $opt(chan) \
                   -topoInstance $topo \
                   -agentTrace ON \
                   -routerTrace ON \
                   -macTrace OFF \
                   -movementTrace ON
                   
      for {set i 0} {$i < $opt(nn) } { incr i } {
            set node_($i) [$ns node]      
      }

# Provide initial location of mobilenodes
$node_(0) set X_ 5.0
$node_(0) set Y_ 5.0
$node_(0) set Z_ 0.0

$node_(1) set X_ 490.0
$node_(1) set Y_ 285.0
$node_(1) set Z_ 0.0

$node_(2) set X_ 150.0
$node_(2) set Y_ 240.0
$node_(2) set Z_ 0.0

# Generation of movements
$ns at 10.0 "$node_(0) setdest 250.0 250.0 3.0"
$ns at 15.0 "$node_(1) setdest 45.0 285.0 5.0"
$ns at 110.0 "$node_(0) setdest 480.0 300.0 5.0" 

# Set a TCP connection between node_(0) and node_(1)
set tcp [new Agent/TCP/Newreno]
$tcp set class_ 2
set sink [new Agent/TCPSink]
$ns attach-agent $node_(0) $tcp
$ns attach-agent $node_(1) $sink
$ns connect $tcp $sink
set ftp [new Application/FTP]
$ftp attach-agent $tcp
$ns at 10.0 "$ftp start" 



# Define node initial position in nam
for {set i 0} {$i < $opt(nn)} { incr i } {
# 30 defines the node size for nam
$ns initial_node_pos $node_($i) 30
}

# Telling nodes when the simulation ends
for {set i 0} {$i < $opt(nn) } { incr i } {
    $ns at $opt(stop) "$node_($i) reset";
}

# ending nam and the simulation 
$ns at $opt(stop) "$ns nam-end-wireless $opt(stop)"
$ns at $opt(stop) "stop"
$ns at 150.01 "puts \"end simulation\" ; $ns halt"
proc stop {} {
    global ns tracefd namtrace
    $ns flush-trace
    close $tracefd
    close $namtrace
exec nam dsr.nam &
exit 0
}

$ns run

	
} 
puts "want to continue (0/1)" 
set a [gets stdin]
}
