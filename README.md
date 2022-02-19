# termux-scripts
personal scripts for termux

```sh
git clone https://github.com/clementd64/termux-scripts.git .termux-scripts
termux-job-scheduler --job-id 0 -s ~/.termux-scripts/trigger.sh --period-ms 3600000 --persisted true
```