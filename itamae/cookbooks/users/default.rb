remote_file '/etc/sudoers.d/admin-users' do
  owner 'root'
  group 'root'
  mode '440'
  source 'files/etc/sudoers.d/admin-users'
end

user %(create user) do
  username node[:my_name]
  shell '/bin/bash'
  create_home true
end

directory %(/home/#{node[:my_name]}/.ssh) do
  user node[:my_name]
  action :create
end

remote_file %(/home/#{node[:my_name]}/.ssh/authorized_keys) do
  owner node[:my_name]
  source %(files/home/user/.ssh/authorized_keys)
end
