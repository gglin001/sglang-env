# run once
loginctl enable-linger $USER

args=(
  #
  --unit=sglang-serve
  #
  -p "KillMode=control-group"
  -p "TimeoutStopSec=10"
  -p "SendSIGKILL=yes"
  #
  -p "Environment=VLLM_NO_USAGE_STATS=1"
  -p "WorkingDirectory=$PWD"
  #
  scripts/sglang-serve.sh
  #
)
systemd-run --user "${args[@]}"

systemctl --user stop sglang-serve

systemctl --user status sglang-serve
journalctl --user -u sglang-serve -f
# journalctl --user -u sglang-serve -f -n 50
systemctl --user show sglang-serve --property=MainPID,ControlGroup,Environment
systemd-cgtop --user
# PID=$(systemctl --user show sglang-serve --property=MainPID --value)
# nsenter -t $PID -n -m bash
