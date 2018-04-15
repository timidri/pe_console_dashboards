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

  elasticsearch::instance { 'es-01': }

  class { '::kibana':
    config => {
      'server.port' => '8080',
    }
  }
}
