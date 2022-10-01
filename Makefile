
create-controller:
	ansible-playbook -i inventory create_controler.yaml

create-worker:
	ansible-playbook -i inventory create_worker.yaml -e "vm_name=k8s-worker-1 vm_ram_mb=2048"

clean-vm:
	virsh shutdown k8s-controller-1
	virsh undefine k8s-controller-1
	rm ~/.local/share/libvirt/images/k8s-controller-1.qcow2

.PHONY: all create-controller create-worker clean-vm