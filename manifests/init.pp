# pe_console_dashboards
#
# A description of what this class does
#
# @summary A short summary of the purpose of this class
#
# @example
#   include pe_console_dashboards
class pe_console_dashboards {
  include elasticsearch
  include kibana
  elasticsearch::instance { 'es-01': }
}
