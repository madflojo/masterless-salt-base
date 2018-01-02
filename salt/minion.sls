salt-minion:
  pkg:
    - latest
  service:
    - dead
    - enable: False

/etc/salt/minion.d/masterless.conf:
  file.managed:
    - source: salt://salt/config/etc/salt/minion.d/masterless.conf

/etc/cron.d/salt-masterless:
  file.managed:
    - source: salt://salt/config/etc/cron.d/salt-masterless
