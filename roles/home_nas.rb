name "home_nas"
run_list([ "role[samba_server]", "recipe[avahi]" ])
