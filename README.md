# Portfolio Website (Jekyll + Decap CMS)

This repository contains a personal academic portfolio site built with Jekyll and managed through an admin panel at `/cms`.

## Features

- Editable content via CMS: About, News, Publications, Education, Experience, Projects, Blog Posts
- Project cards with configurable image fit (`cover` or `contain`)
- Blog support for LaTeX (MathJax) and code highlighting
- Resume upload + Download Resume button from CMS site settings
- News section sorted newest-first with optional scroll area
- Optional RSS subscribe button (`/feed.xml`)

## Local Development

1. Create `.env` from `.env.example` and set:
   - `CMS_ADMIN_USERNAME`
   - `CMS_ADMIN_PASSWORD`
2. Run:
   - `bash local_run.sh`
3. Open:
   - Site: `http://localhost:4000`
   - CMS: `http://localhost:4000/cms`

## CMS Notes

- `Site Settings` controls profile image, social links, resume, and newsletter button.
- In `Projects`, set **Image Fit**:
  - `cover`: fills banner (may crop)
  - `contain`: shows full image (no crop)

## Deployment

Push to `main` to trigger GitHub Actions deployment (workflow in `.github/workflows/pages.yml`).
