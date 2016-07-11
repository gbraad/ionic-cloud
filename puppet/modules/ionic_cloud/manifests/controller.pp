class ionic_cloud::controller {
  include ionic_cloud::server
  include ionic_cloud::controller::rabbitmq
  include ionic_cloud::controller::mysql
  include ionic_cloud::controller::keystone
  include ionic_cloud::controller::glance
  include ionic_cloud::controller::neutron
  include ionic_cloud::controller::nova
}
