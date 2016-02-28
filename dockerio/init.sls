docker.io:
  pkgrepo:
    - managed
    - humanname: Docker Repo
    - name: deb https://get.docker.com/ubuntu docker main
    - keyserver: hkp://p80.pool.sks-keyservers.net:80
    - keyid: 58118E89F3A912897C070ADBF76221572C52609D
  pkg:
    - latest
    - require:
      - pkg: git

docker:
  service:
    - running
    - enable: True
    - watch:
      - pkg: docker.io

docker-py:
  pip.installed:
    - name: docker-py < 0.5
    - require:
      - pkg: python-pip
