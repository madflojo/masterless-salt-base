docker.io:
  pkgrepo:
    - managed
    - humanname: Docker Repo
    - name: deb https://get.docker.com/ubuntu docker main
    - keyserver: keyserver.ubuntu.com
    - keyid: 36A1D7869245C8950F966E92D8576A8BA88D21E9
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
