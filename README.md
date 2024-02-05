Application Design
=========
![image](https://github.com/draju1980/ethnodes/assets/28708694/6a23bfc3-aee7-4061-a950-5140eca038a2)


Role Name
=========

This role is designed to set up Geth and Lighthouse clients within Docker containers, along with additional wallets. Leveraging HAProxy, all RPC requests will be intelligently routed to both Ethereum clients using a round-robin traffic strategy.

Requirements
------------

This role is specifically developed for Linux distributions like Debian and Ubuntu, as well as Mac machines. It is not compatible with other operating systems.

Role Variables
--------------

This role incorporates variables defined in both defaults/main.yml and vars/testnet.yml.

How to Use this role
==============

```
ansible-playbook -i inventory.ini tasks/main.yml
```
