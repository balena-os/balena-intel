inherit kernel-resin


# enable ip6table_nat and nf_nat_ipv6 as modules (we only add CONFIG_IP6_NF_NAT here as that will also bring in CONFIG_NF_NAT_IPV6)
RESIN_CONFIGS_append = " ip6tables_nat ip_set"

RESIN_CONFIGS[ip6tables_nat] = " \
    CONFIG_IP6_NF_NAT=m \
    "

RESIN_CONFIGS_DEPS[ip6tables_nat] = " \
    CONFIG_NF_CONNTRACK_IPV6=m \
    "

RESIN_CONFIGS[ip_set] = " \
    CONFIG_IP_SET=m \
    CONFIG_IP_SET_BITMAP_IP=m \
    CONFIG_IP_SET_BITMAP_IPMAC=m \
    CONFIG_IP_SET_BITMAP_PORT=m \
    CONFIG_IP_SET_HASH_IP=m \
    CONFIG_IP_SET_HASH_IPPORT=m \
    CONFIG_IP_SET_HASH_IPPORTIP=m \
    CONFIG_IP_SET_HASH_IPPORTNET=m \
    CONFIG_IP_SET_HASH_NET=m \
    CONFIG_IP_SET_HASH_NETIFACE=m \
    CONFIG_IP_SET_HASH_NETPORT=m \
    CONFIG_IP_SET_LIST_SET=m \
    "
