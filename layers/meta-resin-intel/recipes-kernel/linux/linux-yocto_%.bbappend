inherit kernel-resin


# enable ip6table_nat and nf_nat_ipv6 as modules (we only add CONFIG_IP6_NF_NAT here as that will also bring in CONFIG_NF_NAT_IPV6)
RESIN_CONFIGS_append = " ip6tables_nat"

RESIN_CONFIGS[ip6tables_nat] = " \
    CONFIG_IP6_NF_NAT=m \
    "

RESIN_CONFIGS_DEPS[ip6tables_nat] = " \
    CONFIG_NF_CONNTRACK_IPV6=m \
    "
