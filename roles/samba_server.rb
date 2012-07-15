name "samba_server"
run_list("samba::server")
default_attributes({
    "samba" => {
      "hosts_allow" => "0.0.0.0/0",
      "server_string" => "Chefiler",
      "workgroup" => "bwbohhnet",
      "interfaces" => "0.0.0.0/0"
    }
  }
)
