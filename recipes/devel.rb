include_recipe "utilite::default"

user "utilite" do
  supports :manage_home => true
  shell "/bin/bash"
  password "$1$1ABryTOX$A2b.tXEE9fxKiwlLnCFks1"
end

sudo "utilite" do
  nopasswd true
  defaults '!requiretty'
end

package "curl"
package "wget"
package "mount"
package "dmsetup"
package "parted"
package "kpartx"
package "qemu-utils"
package "default-jre-headless"
package "pbzip2"
package "git"
package "ruby1.9.1"
package "rubygems"
package "ruby1.9.1-dev"
