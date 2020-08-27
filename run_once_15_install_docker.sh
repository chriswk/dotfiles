#!/bin/bash -e
yay -S --noconfirm docker docker-compose && sudo usermod -a -G docker $(whoami) && sudo systemctl enable docker.service
