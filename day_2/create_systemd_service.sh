cd /etc/systemd/system
vi ex200script.service
[Unit]
Descrption= EX200 timer Script

[Service]
Type=oneshot
ExecStart=/home/john/repo_projects/RHCSA/day_2/testtimer.sh

vi ex200script.timer
[Unit]
Description=Run my custom ex200 script on a timer

[Timer]
#OnCalendar=hourly
#You can use any schedule (Daily, Weekly, or exact cron-like patterns, for example
#OnCalendar=daily
#OnCalendar=Mon..Fri 09:00
#OnCalendar=*-*-* *:00:15 (every 15 minutes)
#OnCalendar=*-*-01 00:00 (monthly)

OnCalendar=*-*-* *:00/15
Persistent=true

[Install]
WantedBy=timers.target

systemctl daemon-reload

systemctl enable --now ex200script.sh


