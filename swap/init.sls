make_a_swap:
  cmd.run:
    - name: |
        dd if=/dev/zero of=/.swap bs=1M count=4096 && mkswap /.swap
    - unless: file /.swap 2>&1 | grep -q "swap file"

/.swap:
  mount.swap:
    - persist: True
    - require:
      - cmd: make_a_swap
