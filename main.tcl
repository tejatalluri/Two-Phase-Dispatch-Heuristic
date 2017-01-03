$ns connect $tcp3 $sink3	
set ftp3 [new Application/FTP]
$ftp3 attach-agent $tcp3
$ns at 214.0 "$ftp3 start"
$ns at 216.0 "$ftp3 stop"


set tcp4 [new Agent/TCP/Newreno]
$tcp4 set class_ 2
set sink4 [new Agent/TCPSink]
$ns attach-agent $n(38) $tcp4
$ns attach-agent $n(52) $sink4
$ns connect $tcp4 $sink4
set ftp4 [new Application/FTP]
$ftp4 attach-agent $tcp4
$ns at 217.0 "$ftp4 start"
$ns at 218.0 "$ftp4 stop"


set tcp4 [new Agent/TCP/Newreno]
$tcp4 set class_ 2
set sink4 [new Agent/TCPSink]
$ns attach-agent $n(13) $tcp4
$ns attach-agent $n(49) $sink4
$ns connect $tcp4 $sink4
set ftp4 [new Application/FTP]
$ftp4 attach-agent $tcp4
$ns at 219.0 "$ftp4 start"
$ns at 220.0 "$ftp4 stop"



set tcp4 [new Agent/TCP/Newreno]
$tcp4 set class_ 2
set sink4 [new Agent/TCPSink]
$ns attach-agent $n(49) $tcp4
$ns attach-agent $n(37) $sink4
$ns connect $tcp4 $sink4
set ftp4 [new Application/FTP]
$ftp4 attach-agent $tcp4
$ns at 222.0 "$ftp4 start"
$ns at 225.0 "$ftp4 stop"


set tcp4 [new Agent/TCP/Newreno]
$tcp4 set class_ 2
set sink4 [new Agent/TCPSink]
$ns attach-agent $n(37) $tcp4
$ns attach-agent $n(52) $sink4
$ns connect $tcp4 $sink4
set ftp4 [new Application/FTP]
$ftp4 attach-agent $tcp4
$ns at 226.0 "$ftp4 start"
$ns at 228.0 "$ftp4 stop"


set tcp4 [new Agent/TCP/Newreno]
$tcp4 set class_ 2
set sink4 [new Agent/TCPSink]
$ns attach-agent $n(6) $tcp4
$ns attach-agent $n(0) $sink4
$ns connect $tcp4 $sink4
set ftp4 [new Application/FTP]
$ftp4 attach-agent $tcp4
$ns at 230.0 "$ftp4 start"
$ns at 232.0 "$ftp4 stop"


set tcp4 [new Agent/TCP/Newreno]
$tcp4 set class_ 2
set sink4 [new Agent/TCPSink]
$ns attach-agent $n(0) $tcp4
$ns attach-agent $n(37) $sink4
$ns connect $tcp4 $sink4
set ftp4 [new Application/FTP]
$ftp4 attach-agent $tcp4
$ns at 233.0 "$ftp4 start"
$ns at 234.0 "$ftp4 stop"



set tcp [new Agent/TCP/Newreno]
$tcp set class_ 2
set sink [new Agent/TCPSink]
$ns attach-agent $n(37) $tcp
$ns attach-agent $n(52) $sink
$ns connect $tcp $sink
set ftp [new Application/FTP]
$ftp attach-agent $tcp
$ns at 235.0 "$ftp start"
$ns at 237.0 "$ftp stop"


set tcp [new Agent/TCP/Newreno]
$tcp set class_ 2
set sink [new Agent/TCPSink]
$ns attach-agent $n(46) $tcp
$ns attach-agent $n(41) $sink
$ns connect $tcp $sink
set ftp [new Application/FTP]
$ftp attach-agent $tcp
$ns at 238.0 "$ftp start"
$ns at 239.0 "$ftp stop"



set tcp1 [new Agent/TCP/Newreno]
$tcp1 set class_ 2
set sink1 [new Agent/TCPSink]
$ns attach-agent $n(41) $tcp1
$ns attach-agent $n(14) $sink1
$ns connect $tcp1 $sink1
set ftp1 [new Application/FTP]
$ftp1 attach-agent $tcp1
$ns at 240.0 "$ftp1 start"
$ns at 241.0 "$ftp1 stop"


set tcp33 [new Agent/TCP/Newreno]
$tcp33 set class_ 3
set sink33 [new Agent/TCPSink]
$ns attach-agent $n(14) $tcp33
$ns attach-agent $n(53) $sink33
$ns connect $tcp33 $sink33
set ftp33 [new Application/FTP]
$ftp33 attach-agent $tcp33
$ns at 242.0 "$ftp33 start"
$ns at 243.0 "$ftp33 stop"




set tcp3 [new Agent/TCP/Newreno]
$tcp3 set class_ 3
set sink3 [new Agent/TCPSink]
$ns attach-agent $n(59) $tcp3
$ns attach-agent $n(56) $sink3
$ns connect $tcp3 $sink3
set ftp3 [new Application/FTP]
$ftp3 attach-agent $tcp3
$ns at 244.0 "$ftp3 start"
$ns at 245.0 "$ftp3 stop"


set tcp4 [new Agent/TCP/Newreno]
$tcp4 set class_ 2
set sink4 [new Agent/TCPSink]
$ns attach-agent $n(56) $tcp4
$ns attach-agent $n(14) $sink4
$ns connect $tcp4 $sink4
set ftp4 [new Application/FTP]
$ftp4 attach-agent $tcp4
$ns at 246.0 "$ftp4 start"
$ns at 247.0 "$ftp4 stop"


set tcp4 [new Agent/TCP/Newreno]
$tcp4 set class_ 2
set sink4 [new Agent/TCPSink]
$ns attach-agent $n(14) $tcp4
$ns attach-agent $n(53) $sink4
$ns connect $tcp4 $sink4
set ftp4 [new Application/FTP]
$ftp4 attach-agent $tcp4
$ns at 247.50 "$ftp4 start"
$ns at 248.0 "$ftp4 stop"	

# ending nam and the simulation
$ns at $val(stop) "$ns nam-end-wireless $val(stop)"
$ns at $val(stop) "stop"
$ns at 249.1 "puts \"end simulation\" ; $ns halt"
proc stop {} {
global ns tracefd namtrace
$ns flush-trace
close $tracefd
close $namtrace
#exec nam out.nam &
}
