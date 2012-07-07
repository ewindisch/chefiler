directory "/opt"
directory "/opt/chefiler"
directory "/etc/cloudinf"

git "/opt/chefiler/nodestored" do
  repository "https://github.com/ewindisch/nodestored.git"
  reference "master"
  action :sync
end

template "/etc/cloudinf/config.ini" do
  mode "0400"
  source "config.ini.erb"
end
