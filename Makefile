HOSTS := ./hosts.yml
USER := tf2server
PLAYBOOK_PATH := ./playbooks

setup:
	ansible-playbook -i $(HOSTS) -u $(USER) $(PLAYBOOK_PATH)/setup.yml

update:
	ansible-playbook -i $(HOSTS) -u $(USER) $(PLAYBOOK_PATH)/update.yml

sourcemod:
	ansible-playbook -i $(HOSTS) -u $(USER) $(PLAYBOOK_PATH)/sourcemod.yml

srcds:
	ansible-playbook -i $(HOSTS) -u $(USER) $(PLAYBOOK_PATH)/srcds.yml

web:
	ansible-playbook -i $(HOSTS) -u $(USER) $(PLAYBOOK_PATH)/web.yml
