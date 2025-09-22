# Pack 57 Website

A Jekyll-based website for Cub Scout Pack 57 in Palo Alto, CA.

## Overview

This repository contains the source code for the Pack 57 website. The site is built using Jekyll, styled with TailwindCSS, and integrates with Google Calendar for event management.

We intend to create a more easily deployable template version of this site in the future. In the meantime, we've made this repository available to other Scouting America organizations so they can use it as a starting point for their own websites.

## Features

- **Responsive Design**: Mobile-friendly layout using TailwindCSS
- **Event Management**: Integration with Google Calendar for public and private events
- **Downloadable Calendar Events**: Support for adding events to personal calendars (.ics)
- **Leadership Directory**: Information about pack leadership
- **Den Information**: Details about each den and meeting times

## Getting Started

### Prerequisites

- Ruby 3.x
- Bundler

### Installation

1. Clone the repository
   ```
   git clone https://github.com/your-username/pack57.git
   cd pack57
   ```

2. Install dependencies
   ```
   bundle install
   ```

3. Setup Google Calendar Integration
   - Create a service account in Google Cloud Console
   - Generate a key and save it as `gcalendar-key.json` in the root directory
   - Share your Google Calendar with the service account email
   - Update `_config.yml` with your calendar ID

### Development

Run the local development server:
```
bundle exec jekyll serve
```

The site will be available at `http://localhost:4000`.

### Building for Production

```
bundle exec jekyll build
```

This will generate the static site in the `_site` directory.

## Deployment

The site is automatically deployed to GitHub Pages when changes are pushed to the main branch using GitHub Actions.

## Directory Structure

- `_config.yml`: Main Jekyll configuration
- `_layouts/`: Layout templates
- `_includes/`: Reusable components
- `assets/`: Static assets (images, CSS)
- `_site/`: Generated site (not in repository)

## Contributing

1. Fork the repository
2. Create a new branch (`git checkout -b feature/your-feature`)
3. Make your changes
4. Commit your changes (`git commit -m 'Add some feature'`)
5. Push to the branch (`git push origin feature/your-feature`)
6. Open a Pull Request

## License

This project is licensed under the Scouting America Non-Commercial License - see the [LICENSE](LICENSE) file for details. This custom license permits use by:

- Registered Scouting America organizations (Cub Scout packs, Scout troops, etc.)
- Non-profit educational organizations affiliated with Scouting America
- Volunteers affiliated with Scouting America organizations

For uses outside these terms, please contact [webmaster@pack57paloalto.com].

## Acknowledgments

- [Jekyll](https://jekyllrb.com/)
- [TailwindCSS](https://tailwindcss.com/)
- [GitHub Pages](https://pages.github.com/)
- [jekyll-google-calendar](https://github.com/jekyll-plugin/jekyll-google-calendar)