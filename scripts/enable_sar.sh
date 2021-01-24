sudo apt install sysstat

sudo vi /etc/default/sysstat
change ENABLED="false" to ENABLED="true"

3. Change the collection interval from every 10 minutes to every 2 minutes.
sudo vi /etc/cron.d/sysstat
Change
5-55/10 * * * * root command -v debian-sa1 > /dev/null && debian-sa1 1 1
To
*/2 * * * * root command -v debian-sa1 > /dev/null && debian-sa1 1 1
save the file

4. Start sysstat
sudo /etc/init.d/sysstat start

5. If you want to see all statistics you can type:
sar -A

6. Send me the statistics by attaching to this case the output of the following command:
sudo sar -A > $(date +`hostname`-%d-%m-%y-%H%M.log)

