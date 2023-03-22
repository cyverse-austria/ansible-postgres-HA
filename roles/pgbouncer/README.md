
Role Name
=========

A brief description of the role goes here. TODO

Requirements
------------

Any pre-requisites that may not be covered by Ansible itself or the role should be mentioned here. For instance, if the role uses the EC2 module, it may be a good idea to mention in this section that the boto package is required.

Role Variables
--------------

| var-name | default | description |
| -------- | ------- | ----------- |
| postgres_admin_user | postgres | user running postgresql |
| pgbouncer_listen_address | \* | |
| pgbouncer_listen_port | 6432 | |
| pgbouncer_users | { username: "pgbouncer", password: "pgbouncer1234" } | plus all user with passwords in the database |
| pgbouncer_pool | { name: "repmgr", dbname: "repmgr", host: "localhost", port: "5432" }<br/>{ name: "testdb", dbname: "testdb", host: "localhost", port: "5432" } ||
| pgbouncer_server_tls_ssl_mode | enable/**disable** | |
| pgbouncer_admin_users | root ||
| pgbouncer_stats_users | root ||
| pgbouncer_pool_mode | session ||
| pgbouncer_default_pool_size | 20 ||
| pgbouncer_min_pool_size | 0 ||
| pgbouncer_reserve_pool_size | 0 ||
| pgbouncer_reserve_pool_timeout | 5 ||
| pgbouncer_max_db_connections | 0 ||
| pgbouncer_max_user_connections | 0 ||

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
        - role: ansible-pgbouncer
          pgbouncer_listen_port: 4321

License
-------

BSD

Author Information
------------------

TODO
