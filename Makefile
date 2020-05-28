download_box:
	. ./script/download_box.sh

init_vm:
	vagrant up && vagrant reload

reload_vm:
	vagrant reload

stop_vm:
	vagrant halt

delete_vm:
	vagrant destroy -f

test_ping_vm:
	ansible -i ./ansible/inventory.ini -m ping all

setup_swarm:
	cd ./ansible && ansible-playbook -i ./inventory.ini ./provision.yml

deploy:
	cd ./ansible && ansible-playbook -i ./inventory.ini ./deployment.yml

destroy:
	cd ./ansible && ansible-playbook -i ./inventory.ini ./destruction.yml
