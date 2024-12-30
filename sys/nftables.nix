{
  config,
  pkgs,
  lib,
  ...
}:

{
  networking.nftables = {
    enable = true;
    flushRuleset = true;
    # ruleset = ''
    #   table inet filter {
    #     chain input {
    #       type filter hook input priority 0;

    #       # Allow all packets on loopback interface
    #       iif lo accept

    #       # Allow established or related connections
    #       ct state established,related accept

    #       # Allow ICMP (ping)
    #       icmp type echo-request accept comment "Allow ICMP ping requests"

    #       # Allow incoming connections on SSH port
    #       tcp dport ssh accept

    #       # Block IPs related to Reddit (input)
    #       ip saddr 151.101.1.140 drop
    #       ip saddr 151.101.65.140 drop
    #       ip saddr 151.101.129.140 drop
    #       ip saddr 151.101.193.140 drop
    #     }

    #     chain output {
    #       type filter hook output priority 0; policy drop;

    #       # Block IPs related to Reddit (output)
    #       ip daddr 151.101.1.140 drop
    #       ip daddr 151.101.65.140 drop
    #       ip daddr 151.101.129.140 drop
    #       ip daddr 151.101.193.140 drop
    #     }

    #     chain forward {
    #       type filter hook forward priority 0; policy drop;
    #     }
    #   }
    # '';
  };
}
