#!/bin/bash
D_LOG=$(date +%m-%d-%Y)
RESULT=$(ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%mem | head -n 6 >>/var/log/memory_cpu_log_$D_LOG.log)

status=$?

if test $status -eq 0

then

 echo "Logs generated successfully"


else

echo "Logs not generated"

fi
