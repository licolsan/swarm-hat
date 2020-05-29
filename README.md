# 🎩 SwarmHat

SwarmHat is an platform for fastly setting up **Docker Swarm** orchestration cluster on local computer, using virtual machine

## Prerequisites

  1. Download and install [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
  2. Download and install [Vagrant](http://www.vagrantup.com/downloads.html)
  3. [Mac/Linux only] Install [Ansible](http://docs.ansible.com/intro_installation.html)

## Stacks

  - [Vagrant](https://www.vagrantup.com/)
  - [Ansible](https://www.ansible.com/)
  - [Docker Swarm](https://docs.docker.com/engine/swarm/)

## Deployment

  1. Initialize virtual machines
  ```
    $ make init_vm
  ```

  2. Test all virtual machines is alive and config correctly
  ```
    $ make test_ping_vm
  ```

  3. Initialize swarm cluster
  ```
    $ make setup_swarm
  ```

  4. [Optional] This command will run a deployment template of [FUChain](https://github.com/fuchain/librarian-module)
  ```
    $ make deploy
  ```

  5. Finally, you can run to master node and enjoy with your cluster

  ```
    $ vagrant ssh swarm-manager
  ```


## Authors

* **Phạm Hoàng Linh**
