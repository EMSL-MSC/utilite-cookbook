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
  variables :name => "ttymxc3"
end
template "ttymxc1" do
  source "serial.erb"
  variables :name => "ttymxc1"
end

package "dosfstools"
package "e2fsprogs"
package "openssh-server"

node.default['filesystems']['BOOT']['device'] = "/dev/disk/by-label/BOOT"
node.default['filesystems']['BOOT']['fstype'] = "vfat"
node.default['filesystems']['BOOT']['owner'] = "root"
node.default['filesystems']['BOOT']['group'] = "root"
node.default['filesystems']['BOOT']['mode'] = "0755"
node.default['filesystems']['BOOT']['mount'] = "/boot"

include_recipe "filesystem"

