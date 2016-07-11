class ionic_cloud::server {
  include ::ionic_cloud::server::packages
  include ::ionic_cloud::server::auth_file
  include ::ntp
  include ::memcached

  sysctl::value {
    'net.ipv4.tcp_keepalive_time':   value => '30';
    'net.ipv4.tcp_keepalive_intvl':  value => '1';
    'net.ipv4.tcp_keepalive_probes': value => '5';
  }
}
