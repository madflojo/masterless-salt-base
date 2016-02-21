linux-headers-{{ grains['kernelrelease'] }}:
  pkg:
    - installed

sysdig:
  pkg:
    - installed
    - require:
      - pkg: linux-headers-{{ grains['kernelrelease'] }}
