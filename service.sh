/system/bin/iptables -P INPUT DROP
/system/bin/iptables -P FORWARD DROP
/system/bin/iptables -A INPUT -i lo -j ACCEPT  # Allow localhost
/system/bin/iptables -A INPUT -m state --state ESTABLISHED,RELATED -j ACCEPT  # Allow established connections

/system/bin/ip6tables -P INPUT DROP
/system/bin/ip6tables -P FORWARD DROP
/system/bin/ip6tables -A INPUT -i lo -j ACCEPT  # Allow localhost
/system/bin/ip6tables -A INPUT -m state --state ESTABLISHED,RELATED -j ACCEPT  # Allow established connections
