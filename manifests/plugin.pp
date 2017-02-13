define fluentd::plugin(
  $plugin_ensure = present,
  $plugin_source = 'https://rubygems.org',
  $plugin_install_options = [],
  $plugin_provider = tdagent,
) {
  package { $title:
    ensure          => $plugin_ensure,
    source          => $plugin_source,
    install_options => $plugin_install_options,
    provider        => $plugin_provider,
    notify          => Class['Fluentd::Service'],
    require         => Class['Fluentd::Install'],
  }
}
