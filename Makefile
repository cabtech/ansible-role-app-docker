lint: .ylint .alint

.alint: */*.yml .config/ansible-lint.yml
	ansible-lint --config-file=.config/ansible-lint.yml
	@touch $@

.ylint: */*.yml .config/yamllint
	yamllint --config-file=.config/yamllint .
	@touch $@

# --------------------------------

push: lint
	@mkdir -p /mnt/hgfs/shared/ansible-role-app-docker
	rsync -a .config .gitignore [A-z]* /mnt/hgfs/shared/ansible-role-app-docker

.PHONY: clean
clean:
	@/bin/rm -f .alint .ylint
