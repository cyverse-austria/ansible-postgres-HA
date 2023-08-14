# Playbook to install a Postgresql-HA environment

## Roles

The playbook runs four roles
[hosts-file](#host-file)
[postgres-HA](#postgres-HA)
[keepalive](#keepalive)
[pgbouncer](#pgbouncer)

### host-file

This role adds the hostname and the fqdn to the `/etc/hosts` file.  
Reason to do that:  
Sometimes DNS-changes are slower then the we need it to run the
ansible-scripts. The entry in the `/etc/hosts` file prefents other roles
aganist `host not found/unknown/reachable` errors.

### postgres-HA
Role [readme](./roles/postgres-HA/README.md).
Original [ansible-repo](https://github.com/fidanf/ansible-role-postgresql-ha).
This role installs a postgres HA-cluster. Managed is the cluster with `repmgr`
a tool to manage replication and failover.

### keepalive
Role [readme](./roles/keepalive/README.md).
Here we install keepalive. It uses a additional IP that can be switched between
hosts after a failover.

### pgbouncer
Role [readme](./roles/pgbouncer/README.md).
At last we install `pgbouncer`. It is a *pooler* to make client-connections
faster and more stable.

