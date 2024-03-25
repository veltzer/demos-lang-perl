#!/usr/bin/perl -w

use strict;
use warnings;

=head

This example shows how to use the __END__ constant
in perl to append junk to your perl file...

=cut

print 'what is your name: ';
my $name=<STDIN>;
chop($name);
print "this is ${name}s website!\n";

__END__
root:x:0:0:root:/root:/bin/bash
daemon:x:1:1:daemon:/usr/sbin:/usr/sbin/nologin
bin:x:2:2:bin:/bin:/usr/sbin/nologin
sys:x:3:3:sys:/dev:/usr/sbin/nologin
sync:x:4:65534:sync:/bin:/bin/sync
games:x:5:60:games:/usr/games:/usr/sbin/nologin
man:x:6:12:man:/var/cache/man:/usr/sbin/nologin
lp:x:7:7:lp:/var/spool/lpd:/usr/sbin/nologin
mail:x:8:8:mail:/var/mail:/usr/sbin/nologin
news:x:9:9:news:/var/spool/news:/usr/sbin/nologin
uucp:x:10:10:uucp:/var/spool/uucp:/usr/sbin/nologin
proxy:x:13:13:proxy:/bin:/usr/sbin/nologin
www-data:x:33:33:www-data:/var/www:/usr/sbin/nologin
backup:x:34:34:backup:/var/backups:/usr/sbin/nologin
list:x:38:38:Mailing List Manager:/var/list:/usr/sbin/nologin
irc:x:39:39:ircd:/var/run/ircd:/usr/sbin/nologin
gnats:x:41:41:Gnats Bug-Reporting System (admin):/var/lib/gnats:/usr/sbin/nologin
nobody:x:65534:65534:nobody:/nonexistent:/usr/sbin/nologin
systemd-timesync:x:100:103:systemd Time Synchronization,,,:/run/systemd:/bin/false
systemd-network:x:101:104:systemd Network Management,,,:/run/systemd/netif:/bin/false
systemd-resolve:x:102:105:systemd Resolver,,,:/run/systemd/resolve:/bin/false
systemd-bus-proxy:x:103:106:systemd Bus Proxy,,,:/run/systemd:/bin/false
syslog:x:104:109::/home/syslog:/bin/false
messagebus:x:105:110::/var/run/dbus:/bin/false
uuidd:x:106:111::/run/uuidd:/bin/false
avahi:x:107:114:Avahi mDNS daemon,,,:/var/run/avahi-daemon:/bin/false
whoopsie:x:108:115::/nonexistent:/bin/false
avahi-autoipd:x:109:118:Avahi autoip daemon,,,:/var/lib/avahi-autoipd:/bin/false
dnsmasq:x:110:65534:dnsmasq,,,:/var/lib/misc:/bin/false
colord:x:111:121:colord colour management daemon,,,:/var/lib/colord:/bin/false
speech-dispatcher:x:112:29:Speech Dispatcher,,,:/var/run/speech-dispatcher:/bin/false
hplip:x:113:7:HPLIP system user,,,:/var/run/hplip:/bin/false
kernoops:x:114:65534:Kernel Oops Tracking Daemon,,,:/:/bin/false
pulse:x:115:122:PulseAudio daemon,,,:/var/run/pulse:/bin/false
rtkit:x:116:124:RealtimeKit,,,:/proc:/bin/false
saned:x:117:125::/var/lib/saned:/bin/false
usbmux:x:118:46:usbmux daemon,,,:/var/lib/usbmux:/bin/false
lightdm:x:119:126:Light Display Manager:/var/lib/lightdm:/bin/false
mark:x:1000:1000:Mark Veltzer,,,:/home/mark:/bin/bash
minidlna:x:120:129:MiniDLNA server,,,:/var/lib/minidlna:/usr/sbin/nologin
timidity:x:121:130:TiMidity++ MIDI sequencer service:/etc/timidity:/bin/false
oprofile:x:122:132:OProfile JIT user,,,:/var/lib/oprofile:/bin/bash
sddm:x:123:136:Simple Desktop Display Manager:/var/lib/sddm:/bin/false
mysql:x:124:137:MySQL Server,,,:/nonexistent:/bin/false
sshd:x:125:65534::/var/run/sshd:/usr/sbin/nologin
guest-tPppTX:x:126:138:Guest,,,:/tmp/guest-tPppTX:/bin/bash
glances:x:127:139::/var/lib/glances:/bin/false
newuser:x:1001:1001::/home/newuser:
