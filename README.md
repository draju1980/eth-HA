Application Design
=========
![image](https://github.com/draju1980/ethnodes/assets/28708694/6a23bfc3-aee7-4061-a950-5140eca038a2)


Role Name
=========

This role is designed to set up Geth and Lighthouse clients within Docker containers, along with additional wallets. Leveraging HAProxy, all RPC requests will be intelligently routed to both Ethereum clients using a round-robin traffic strategy.

Requirements
------------

This role is specifically developed for Linux distributions like Debian and Ubuntu, It is not compatible with other operating systems.

Role Variables
--------------

This role incorporates variables defined in both defaults/main.yml and vars/testnet.yml.

How to Use this role
==============
To execute the Ansible playbook on the target Linux box, follow these steps:

1.	Login to the Linux Box:
SSH into the Linux box where you want to execute the Ansible playbook.

2.	Switch to Root:
Switch to the root user using the following command:
```
sudo su -
```

3.	Install Ansible and Git:
Install Ansible and Git using the apt package manager:
```
sudo apt update
```
```
sudo apt install ansible git -y
```

4.	Clone Repository:
Clone the repository locally:
```
git clone https://github.com/draju1980/eth-HA.git
```

5.	Change Directory:
Change to the eth-HA directory:
```
cd eth-HA
```

6.	Run Ansible Playbook:
Run the Ansible playbook using the inventory file:

```
ansible-playbook -i inventory.ini tasks/main.yml
```
