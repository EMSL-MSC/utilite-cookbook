#
# Cookbook Name:: utilite
# Recipe:: default
#
# Copyright 2015, Battelle PNNL
#
# All rights reserved - Do Not Redistribute
#
node.default['utilite']['ttymxc1']['baudrate'] = 115200
node.default['utilite']['ttymxc3']['baudrate'] = 115200
template "ttymxc3" do
  source "serial.erb"
  path "/etc/init/ttymxc3.conf"
  variables :name => "ttymxc3"
end
template "ttymxc1" do
  source "serial.erb"
  path "/etc/init/ttymxc1.conf"
  variables :name => "ttymxc1"
end

package "dosfstools"
package "e2fsprogs"
package "openssh-server"
package "isc-dhcp-client"

user "root" do
  password '$1$1ABryTOX$A2b.tXEE9fxKiwlLnCFks1'
end
