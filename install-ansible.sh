#!/bin/bash

yum install -y git python2 python2-devel

pip install paramiko PyYAML Jinja2 httplib2 six

git clone --recursive git://github.com/ansible/ansible.git /opt/ansible

cat << EOF > /etc/profile.d/ansible.sh
#!/bin/bash
export ANSIBLE_HOME=/opt/ansible
export PATH=\${PATH}:\${ANSIBLE_HOME}/bin
source \${ANSIBLE_HOME}/hacking/env-setup -q
EOF
