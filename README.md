# 3l1070r.dev

Personal blog and portfolio website built with Jekyll and the Minimal Mistakes theme, hosted on GitHub Pages.

## 🚀 Live Site

Visit the live site at: [https://3l1070r.dev](https://3l1070r.dev)

## 🛠 Local Development

This project is configured to work both locally for development and on GitHub Pages for production deployment.

### Prerequisites

- Ruby 2.7+ (check with `ruby --version`)
- Bundler gem (`gem install bundler`)
- Git

### Setup

1. **Clone the repository**
   ```bash
   
   git clone https://github.com/3l1070r/3l1070r.github.io.git
   cd 3l1070r.github.io
   ```

2. **Install dependencies**
   ```bash
   bundle install --path vendor/bundle
   ```
   
   This installs all gems locally in the `vendor/bundle` directory to avoid conflicts with system gems.

3. **Serve locally**
   ```bash
   bundle exec jekyll serve
   ```
   
   Or to serve on all interfaces (useful for testing on mobile devices):
   ```bash
   bundle exec jekyll serve --host 0.0.0.0 --port 4000
   ```

4. **Access the site**
   Open your browser and navigate to: `http://localhost:4000`

### Development Workflow

1. **Make changes** to posts, pages, or configuration
2. **Test locally** with `bundle exec jekyll serve`
3. **Validate the build** with `bundle exec jekyll build`
4. **Commit and push** when everything looks good
5. **GitHub Pages automatically deploys** your changes

## 📁 Project Structure

```
3l1070r.github.io/
├── _config.yml          # Jekyll configuration
├── _posts/              # Blog posts
├── assets/              # CSS, images, and other assets
├── index.md             # Homepage
├── Gemfile              # Ruby dependencies
├── .gitignore           # Files to ignore in git
└── README.md            # This file
```

## 🎨 Theme

This site uses the [Minimal Mistakes](https://mmistakes.github.io/minimal-mistakes/) theme via `remote_theme` for GitHub Pages compatibility.

### Theme Configuration

The theme is configured in `_config.yml`:
- `remote_theme: mmistakes/minimal-mistakes@4.24.0`
- Custom colors and styling in `assets/main.scss`

## 📝 Writing Posts

Create new posts in the `_posts/` directory with the filename format:
```
YYYY-MM-DD-post-title.md
```

Example front matter:
```yaml
---
layout: single
title: "Your Post Title"
date: 2025-01-24
categories: [category1, category2]
tags: [tag1, tag2]
---

Your content here...
```

## 🔧 Dependencies

### For Local Development
- `github-pages` - Ensures compatibility with GitHub Pages
- `minimal-mistakes-jekyll` - Theme gem for local development
- Various Jekyll plugins (feed, sitemap, SEO, etc.)

### For GitHub Pages Production
- Uses `remote_theme` to fetch the Minimal Mistakes theme
- GitHub Pages automatically installs compatible gems
- No need to deploy `vendor/` or `Gemfile.lock`

## 🚢 Deployment

### Automatic Deployment
This site automatically deploys to GitHub Pages when you push to the `main` branch.

### Manual Deployment Check
You can verify your changes will work on GitHub Pages by running:
```bash
bundle exec jekyll build
```

If the build succeeds locally, it should also succeed on GitHub Pages.

## 📋 Common Commands

```bash
# Install/update dependencies
bundle install --path vendor/bundle

# Serve locally with live reload
bundle exec jekyll serve

# Build site (for testing)
bundle exec jekyll build

# Update gems
bundle update

# Clean build files
bundle exec jekyll clean
```

## 🔍 Troubleshooting

### Build Errors
- Check that YAML front matter is properly formatted
- Ensure all required plugins are listed in `_config.yml`
- Validate your `_config.yml` syntax

### Local vs Production Differences
- GitHub Pages uses slightly different gem versions
- Always test locally before pushing
- Check GitHub Pages build status in your repository's Actions tab

### Ruby Version Issues
If you encounter Ruby version conflicts:
```bash
# Use rbenv to manage Ruby versions
rbenv install 3.0.0
rbenv local 3.0.0
bundle install --path vendor/bundle
```

## 📄 License

This project is open source and available under the [MIT License](LICENSE).

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Test locally
5. Submit a pull request

## 📧 Contact

- **Website**: [3l1070r.dev](https://3l1070r.dev)
- **GitHub**: [@3l1070r](https://github.com/3l1070r)
- **LinkedIn**: [3l1070r](https://www.linkedin.com/in/3l1070r/)

---

Built with ❤️ using [Jekyll](https://jekyllrb.com/) and [Minimal Mistakes](https://mmistakes.github.io/minimal-mistakes/)
