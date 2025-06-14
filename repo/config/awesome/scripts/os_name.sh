os_name="$(cat /etc/os-release | awk 'NR==13' | awk -F '=' '{print $2}')"
echo $os_name
