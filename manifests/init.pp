# pe_console_dashboards
#
# A description of what this class does
#
# @summary A short summary of the purpose of this class
#
# @example
#   include pe_console_dashboards
class pe_console_dashboards {
  include ::java
  include ::elasticsearch

  elasticsearch::instance { 'es-01':
    jvm_options => [
      '-Xms400M',
      '-Xmx400M'
    ]
  }

  class { '::kibana':
    config => {
      'server.port' => '8080',
      'server.host' => '0.0.0.0',
    }
  }

  firewall { '100 allow port 8080 access':
    dport  => 8080,
    proto  => tcp,
    action => accept,
  }

}
