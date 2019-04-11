#!/bin/bash

echo "Host *" >> /root/.ssh/config
echo "  ForwardAgent yes" >> /root/.ssh/config
echo "  StrictHostKeyChecking no" >> /root/.ssh/config
eval $(ssh-agent)

exec "$@"