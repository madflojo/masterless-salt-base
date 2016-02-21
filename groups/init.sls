ops:
  group.present:
    - gid: 700
    - order: 3

/etc/sudoers.d/ops:
  file.managed:
    - source: salt://groups/config/etc/sudoers.d/ops.conf
    - user: root
    - group: root
    - mode: 440 
