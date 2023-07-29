HOSTS := ./hosts.yml
USER := tf2server
PLAYBOOK_PATH := ./playbooks
PASSWORD_FILE := ./.vault_pw

setup:
	ANSIBLE_VAULT_PASSWORD_FILE=$(PASSWORD_FILE) ansible-playbook -i $(HOSTS) -u $(USER) $(PLAYBOOK_PATH)/setup.yml

update:
	ANSIBLE_VAULT_PASSWORD_FILE=$(PASSWORD_FILE) ansible-playbook -i $(HOSTS) -u $(USER) $(PLAYBOOK_PATH)/update.yml

sourcemod:
	ANSIBLE_VAULT_PASSWORD_FILE=$(PASSWORD_FILE) ansible-playbook -i $(HOSTS) -u $(USER) $(PLAYBOOK_PATH)/sourcemod.yml

srcds:
	ANSIBLE_VAULT_PASSWORD_FILE=$(PASSWORD_FILE) ansible-playbook -i $(HOSTS) -u $(USER) $(PLAYBOOK_PATH)/srcds.yml

web:
	ANSIBLE_VAULT_PASSWORD_FILE=$(PASSWORD_FILE) ansible-playbook -i $(HOSTS) -u $(USER) $(PLAYBOOK_PATH)/web.yml

encrypt:
	ANSIBLE_VAULT_PASSWORD_FILE=$(PASSWORD_FILE) ansible-vault rekey hosts.yml group_vars/secrets.yml
