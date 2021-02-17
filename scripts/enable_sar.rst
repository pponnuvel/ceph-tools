- sudo apt install sysstat

- Change ENABLED="false" to ENABLED="true" in /etc/default/sysstat

- Change the collection interval from every 10 minutes to every 2 minutes (or whatever) in /etc/cron.d/sysstat
5-55/10 * * * * root command -v debian-sa1 > /dev/null && debian-sa1 1 1
 to
*/2 * * * * root command -v debian-sa1 > /dev/null && debian-sa1 1 1

- start sysstat: sudo /etc/init.d/sysstat start

- If you want to see all statistics you can type: sar -A

- Collect: sudo sar -A > $(date +`hostname`-%d-%m-%y-%H%M.log)

