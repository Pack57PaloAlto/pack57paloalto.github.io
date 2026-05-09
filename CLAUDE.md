# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Commands

### Build and Development

- **Install dependencies**: `bundle install`
- **Run development server**: `bundle exec jekyll serve`
- **Build site**: `bundle exec jekyll build`
- **Clean build**: `bundle exec jekyll clean`

### Testing

- **Run tests**: This project doesn't appear to have a test suite yet.

## Code Architecture

This repository contains a Jekyll-based static website for Cub Scout Pack 57 in Palo Alto, CA.

### Key Technologies

- **Jekyll** (v3.10.0): Static site generator
- **TailwindCSS**: CSS framework for styling
- **jekyll-google-calendar**: Plugin for integrating with Google Calendar
- **GitHub Pages**: Used for hosting the built static site

### Important Files/Directories

- **_config.yml**: Main Jekyll configuration file
- **_layouts/**: Contains layout templates including:
  - **default.html**: Main site layout
  - **event-public.html**: Template for public events
  - **event-private.html**: Template for private (members-only) events
- **assets/**: Contains images and CSS
- **_tailwind.css**: TailwindCSS configuration
- **.github/workflows/pages.yml**: GitHub Actions workflow for building and deploying the site

### Calendar Integration

The site uses the jekyll-google-calendar plugin to integrate with Google Calendar.
Two calendars are configured:
1. Public calendar (events visible to everyone)
2. Private calendar (details only visible to members)

The site reads events from these calendars and generates static pages for each event.

## Secret Management

The Google Calendar API key is stored as a GitHub secret (`GCALENDAR_KEY_JSON`) and is written to `gcalendar-key.json` during the build process.

## Deployment

The site is automatically built and deployed to GitHub Pages when changes are pushed to the main branch using the GitHub Actions workflow defined in `.github/workflows/pages.yml`.
