Vagrant.configure("2") do |config|
  config.vm.box = "~/vm_box/ubuntu-xenial64.box"
  config.vm.synced_folder '.', '/vagrant', disabled: true
  config.ssh.insert_key = false

  config.vm.provider :virtualbox do |v|
    v.memory = 512
    v.cpus = 1
    v.linked_clone = true
  end

  boxes = [
    { :name => "client", :ip => "10.0.8.2" },
    { :name => "swarm-manager", :ip => "192.168.3.10" },
    { :name => "swarm-worker-1", :ip => "192.168.3.11" },
    { :name => "swarm-worker-2", :ip => "192.168.3.12" }
  ]

  # Provision each of the VMs.
  boxes.each do |opts|
    config.vm.define opts[:name] do |config|
      config.vm.hostname = opts[:name]
      config.vm.network :private_network, ip: opts[:ip]
    end
  end

end
