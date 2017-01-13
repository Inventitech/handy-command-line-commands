# kill processes running longer than 20 minutes (using pt-kill from the percona-toolkit)
pt-kill --busy-time 1200 --kill -p PASSWORD
