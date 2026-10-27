lint: .alint

.alint: .ylint */*.yml .config/ansible-lint
	uv run ansible-lint --config-file=.config/ansible-lint
	@touch $@

.ylint: */*.yml .config/yamllint
	uv run yamllint --config-file=.config/yamllint .
	@touch $@

# --------------------------------

.PHONY: clean
clean:
	@/bin/rm -f .alint .ylint

# --------------------------------

init-uv:
	uv python install 3.14
	uv init
	uv python pin python3.14
	uv add -r    requirements.raw
	uv export -o requirements.txt > /dev/null

update-uv:
	uv add -r    requirements.raw
	uv export -o requirements.txt > /dev/null
