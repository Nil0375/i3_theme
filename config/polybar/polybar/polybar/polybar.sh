#!/bin/bash
## kill all old process of ploybar
killall -q polybar
while pgrep -u $UID -x polybar > /dev/null; do sleep 1; done

echo "---" # | tee -a /tmp/polybar1.log | tee -a /tmp/polybar1.log
polybar main_bar 2>&1 | tee -a /tmp/polybar1.log &disown
#polybar main_bar2 2>&1 | tee -a /tmp/polybar2.log &disown
echo "Polybar launched"
