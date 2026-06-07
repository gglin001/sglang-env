# run once
loginctl enable-linger $USER

args=(
  #
  --unit=vllm-serve
  #
  -p "KillMode=control-group"
  -p "TimeoutStopSec=10"
  -p "SendSIGKILL=yes"
  #
  -p "Environment=VLLM_NO_USAGE_STATS=1"
  -p "WorkingDirectory=$PWD"
  #
  scripts/vllm-serve.sh
  #
)
systemd-run --user "${args[@]}"

systemctl --user stop vllm-serve

systemctl --user status vllm-serve
journalctl --user -u vllm-serve -f
# journalctl --user -u vllm-serve -f -n 50
systemctl --user show vllm-serve --property=MainPID,ControlGroup,Environment
systemd-cgtop --user
# PID=$(systemctl --user show vllm-serve --property=MainPID --value)
# nsenter -t $PID -n -m bash
