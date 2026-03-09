#!/bin/bash
source .env

ansible-playbook server.yml -i hosts --extra-vars="\
	local_user=$LOCAL_USER \
	ansible_become_pass=$LOCAL_USER_PASSWORD \
	wg_address=$WG_ADDRESS \
	wg_publickey=$WG_PUBKEY \
	wg_server=$WG_SERVER \
	wg_port=$WG_PORT \
	wg_ips=$WG_IPS"
