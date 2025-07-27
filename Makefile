.PHONY: run check check-fix

# Start Jekyll development server
run:
	bundle exec jekyll serve --livereload --host 0.0.0.0 --port 4000

# Check markdown files for formatting
check:
	@if ! command -v npx >/dev/null 2>&1; then \
		echo "Installing markdownlint-cli2..."; \
		npm install -g markdownlint-cli2; \
	fi
	npx markdownlint-cli2 "**/*.md"

# Fix markdown formatting issues
check-fix:
	@if ! command -v npx >/dev/null 2>&1; then \
		echo "Installing prettier and markdownlint-cli2..."; \
		npm install -g prettier markdownlint-cli2; \
	fi
	npx prettier --write "**/*.md"
	npx markdownlint-cli2 --fix "**/*.md" 