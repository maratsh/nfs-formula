nfs-client-pkg:
  pkg:
    - installed
    - name: nfs-utils


systemctl start nfs-client.target:
  cmd:
    - run
    - require:
       -  pkg: nfs-client-pkg
