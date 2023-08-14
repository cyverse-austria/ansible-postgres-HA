Role Variables
--------------

| var-name              | default    | description                        |
| --------              | -------    | -----------                        |
| postgresql_admin_user | "postgres" | sudo-user for keepalive-script     |
| keepalive_virtIP      | none       | the virtual IP that could be moved |

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
        - role: keepalive
          keepalive_virtIP: 192.168.243.42
          postgresql_admin_user: "postgres"
