/home/nam/Desktop/BA/clknetsim/clknetsim -v 3 -R 1 -o offset.log -f freq.log -l 10000 sim.conf 2 &
sleep 1
LD_PRELOAD=/home/nam/Desktop/BA/clknetsim/clknetsim.so CLKNETSIM_NODE=1 /home/nam/Desktop/BA/time_library/chronyd-sim -d -f server.conf &
LD_PRELOAD=/home/nam/Desktop/BA/clknetsim/clknetsim.so CLKNETSIM_NODE=2 /home/nam/Desktop/BA/ntp-4.2.8p18/ntpd/ntpd -n -c client_ntp.conf &
wait