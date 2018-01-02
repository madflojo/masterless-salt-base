apt-transport-https:
  pkg:
    - latest

ca-certificates:
  pkg:
    - latest

software-properties-common:
  pkg:
    - latest

docker-repo:
  pkgrepo.managed:
    - name: deb [arch=amd64] https://download.docker.com/linux/ubuntu {{ grains["oscodename"] }} stable
    - humanname: Docker Package Repository
    - key_url: https://download.docker.com/linux/ubuntu/gpg
    - file: /etc/apt/sources.list.d/docker.list
    - refresh_db: True

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
