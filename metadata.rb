name      "mosquitto"
maintainer        "Daniel O'Connor"
maintainer_email  "daniel.oconnor@gmail.com"
license           "MIT"
description       "Installs and configures mosquitto, an MQTT broker"
long_description  IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version           "0.0.1"

recipe            "mosquitto", "Includes the recipe to configure the broker"

%w{ debian ubuntu mac_os_x redhat centos scientific fedora arch amazon }.each do |os|
  supports os
end

depends 'apt'
depends 'yum'


attribute "mosquitto/tls_version",
          :description => "",
          :type => "string"

attribute "mosquitto/autosave_interval",
          :description => "Default is '1800s'",
          :type => "string"

attribute "mosquitto/persistent_client_expiration",
          :description => "Default is '1m'",
          :type => "string"

attribute "mosquitto/client/private_ips",
          :description =>  "Ips for ndb_mgmds",
          :type => 'array'

attribute "mosquitto/server/private_ips",
          :description =>  "Ips for ndb_mgmds",
          :type => 'array'

attribute "mosquitto/default/private_ips",
          :description =>  "Ips for ndb_mgmds",
          :type => 'array'

