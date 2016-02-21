sysstat:
  pkg:
    - installed

/etc/default/sysstat:
  file.managed:
    - source: salt://sysstat/config/etc/default/sysstat
    - user: root
    - group: root
    - mode: 644

/etc/cron.d/sysstat:
  file.managed:
    - source: salt://sysstat/config/etc/cron.d/sysstat
    - user: root
    - group: root
    - mode: 644

/etc/sysstat/sysstat:
  file.managed:
    - source: salt://sysstat/config/etc/sysstat/sysstat
    - user: root
    - group: root
    - mode: 644
