----
# ansible-role-app-docker

## Purpose
* Installs Docker
* Installs some convenience scripts in /usr/local/bin
* Installs a Bash include file in /usr/local/etc/bash.d

## Required variables
| Name | Type | Purpose |
| ---- | ---- | ------- |

## Optional variables
| Name | Type | Purpose |
| ---- | ---- | ------- |

## Defaulted variables
| Name | Type | Purpose | Default |
| ---- | ---- | ------- | ------- |
| docker_aws_repos | list(dict()) | used to set up ECR helpers on AWS | [] | 
| docker_dependencies | list(str) | list of pre-requisite pkgs | see `defaults/main.yml` |
| docker_logrotation | list(dict()) | sets up files in `/etc/logrotate.d` | `[]` |
| docker_packages | list(str) | core pkgs to install | see `defaults/main.yml` |
| docker_packages_aws | list(str) | pkgs to install on AWS | see `defaults/main.yml` |
| docker_users | list(str) | usernames to add to Docker Unix group | `[]` |

* type(`docker_aws_repos`) = `list(dict(acct_id, region_name))`
* type(`docker_logrotation`) = `list(dict(filename, count, path, size))`

## Supported Distros
* Ubuntu 16+
* RHEL 7+

## Other && ToDo
* Ignore the Docker Swarm parts
* Rename pkg variables to be more consistent

****
