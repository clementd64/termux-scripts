# termux-scripts
personal scripts for termux

```sh
mkdir -p .config .cache .local
git clone https://github.com/clementd64/termux-scripts.git .local/termux-scripts
termux-job-scheduler --job-id 0 -s ~/.local/termux-scripts/trigger.sh --period-ms 3600000 --persisted true
```