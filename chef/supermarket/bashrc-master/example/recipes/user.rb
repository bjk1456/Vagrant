user_home = value_for_platform_family(
  "mac_os_x" => "/Users/vagrant",
  "default" => "/home/vagrant"


user "vagrant" do
  home user_home
  manage_home true
  shell "/bin/bash"
  gid "admin" if platform_family?("mac_os_x") # on mac, no group, no create :(
end

# Looks like the user doesn't own their own home directory on
# mac_os_x platforms, so let's fix that up
directory user_home do
  owner "vagrant"
  only_if { platform_family?("mac_os_x") }
end

bashrc "vagrant"
