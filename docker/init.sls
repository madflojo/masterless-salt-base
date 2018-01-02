apt-transport-https:
  pkg:
    -latest

ca-certificates:
  pkg:
    - latest

software-properties-common:
  pkg:
    - latest

docker-repo:
  pkgrepo.managed:
    - name: deb https://apt.dockerproject.org/repo {{ grains["os"]|lower }}-{{ grains["oscodename"] }} main
    - humanname: {{ grains["os"] }} {{ grains["oscodename"]|capitalize }} Docker Package Repository
    - keyid: 58118E89F3A912897C070ADBF76221572C52609D

docker-ce:
  pkg:
    - latest
    - require:
      - pkg: git
      - pkg: ca-certificates
      - pkg: apt-transport-https
      - pkg: software-properties-common

docker:
  service:
    - running
    - enable: True
    - watch:
      - pkg: docker-ce

docker-py:
  pip:
    - installed
    - require:
      - pkg: python-pip
