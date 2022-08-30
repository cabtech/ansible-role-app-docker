----
# ansible-role-app-docker

## Purpose
* Installs docker CE
* Adds some convenience scripts in /usr/local/bin
* Adds a Bash aliases files to /usr/local/etc/bash.d

## Required variables
| Name | Type | Purpose |
| ---- | ---- | ------- |

## Optional variables
| Name | Type | Purpose |
| ---- | ---- | ------- |

## Defaulted variables
| Name | Type | Purpose | Default |
| ---- | ---- | ------- | ------- |
| `docker_dependencies` | list(str) | list of packages needed to add the docker repo to APT | see `defaults/main.yml` |
| `docker_logrotation` | see below | sets up files in `/etc/logrotate.d` | `[]` |
| `docker_packages` | list(str) | packages to install | see `defaults/main.yml` |
| `docker_users` | list(str) | usernames to add to docker Unix group | `[]` |

type(`docker_logrotation`) = `list(dict(filename, count, path, size))`

## Supported Distros
Ubuntu 16+
****
