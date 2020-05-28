Vagrant.configure("2") do |config|
  config.vm.box = "~/vm_box/ubuntu-xenial64.box"
  config.vm.synced_folder '.', '/vagrant', disabled: true
  config.ssh.insert_key = false

  config.vm.provider :virtualbox do |v|
    v.memory = 2048
    v.cpus = 2
    v.linked_clone = true
  end

  boxes = [
    { :name => "swarm-manager", :ip => "192.168.3.10" },
    { :name => "swarm-worker-1", :ip => "192.168.3.11" },
    { :name => "swarm-worker-2", :ip => "192.168.3.12" },
    { :name => "swarm-worker-3", :ip => "192.168.3.13" },
    { :name => "swarm-worker-4", :ip => "192.168.3.14" }
  ]

  # Provision each of the VMs.
  boxes.each do |box|
    config.vm.define box[:name] do |config|
      config.vm.hostname = box[:name]
      config.vm.network :private_network, ip: box[:ip]

      if box[:name] == "swarm-manager"
        [
          { :guest => 1000, :host => 1000},
          { :guest => 6379, :host => 6379},
          { :guest => 6380, :host => 6380},
          { :guest => 27017, :host => 27017},
          { :guest => 27018, :host => 27018},
          { :guest => 3000, :host => 3000},
          { :guest => 5100, :host => 5100},
          { :guest => 5000, :host => 5000},
          { :guest => 5002, :host => 5002}
        ].each do |port|
          config.vm.network :forwarded_port, guest: port[:guest], host: port[:host], protocol: "tcp"
        end
      end
    end
  end

end
