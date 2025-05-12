# Intelligent Systems Lab Website ( https://intelligentsystemsubi.github.io/ )

This repository contains the Jekyll-based website for the Intelligent Systems Lab at the University of Beira Interior.

## Website Architecture & Data Flow

This website follows a data-driven approach for most content:

1. **Team Members**: Defined in individual files in `_team_members/` directory
2. **Projects**: Defined in the single `_data/projects.yml` file
3. **Publications**: Listed in `_data/publications.yml`
4. **News**: Listed in `_data/news.yml`
5. **Datasets**: Listed in `_data/datasets.yml`

Content is automatically rendered in appropriate pages based on this data structure, making the site easy to maintain and extend.

## How to Update the Website

### Adding or Updating Team Members

Team members are stored as individual files in the `_team_members` directory:

1. Create a new file in `_team_members` directory with the format `firstname_lastname.md`
2. Use the following template:

```markdown
---
layout: member
title: "Full Name"
role: "faculty"  # Options: faculty, postdoc, phd, master, staff
position: "Position Title"
email: "email@example.com"
github: "github_username"  # Only the username, not the URL
scholar: "https://scholar.google.com/citations?user=YOUR_ID"  # Full URL
website: "https://your-personal-website.com"
image: "/assets/team/your_image.jpg"  # Place images in this directory
research_interests:
  - "Interest 1"
  - "Interest 2"
  - "Interest 3"
---

Write a detailed biography here. This can be multiple paragraphs.

This text will be displayed on the person's individual profile page.

You can use **Markdown** formatting here to add links, lists, or emphasis.
```

3. Place the member's photo in the `/assets/team/` directory
4. The system will automatically:
   - Add the person to the team page under their role category
   - Create an individual profile page at `/team/firstname_lastname/`
   - Match their publications from the publications database

### Team Member Images

When adding new team member photos:

1. Place images in the `assets/team/` directory
2. Use clear, professional headshots or portrait photos
3. **Optimal dimensions**:
   - Faculty: 500px × 600px (width × height)
   - Postdocs: 450px × 550px
   - PhD/Master Students: 400px × 500px
   - Staff: 400px × 500px
4. **Minimum size**: Images should be at least 300px × 400px
5. **Format**: JPG or PNG (transparent backgrounds supported)
6. The website will automatically:
   - Scale images to fit their containers
   - Maintain aspect ratios
   - Apply minimum size constraints (150px min width/height)
   - Apply hover effects and animations

The image display system is designed to be flexible while ensuring consistent appearance across different image sizes.

### Adding or Updating Projects

Projects are defined in a single YAML file (`_data/projects.yml`):

1. Open `_data/projects.yml`
2. Add a new project entry or edit an existing one following this structure:

```yaml
- title: "Project Title"
  id: "project-slug" # This will be used in the URL: /projects/project-slug/
  description: "Brief description of the project (1-2 sentences)."
  status: "active"  # Options: active, completed
  featured: true    # Set to true to display on homepage
  start_date: YYYY-MM-DD  # Project start date
  end_date: YYYY-MM-DD  # Project end date, omit for ongoing projects
  image: "/assets/projects/project_image.jpg"  # Place images in this directory
  website: "https://project-website.com"  # Optional project website
  github: "https://github.com/username/project"  # Optional GitHub repository
  demo: "https://demo-link.com"  # Optional demo link
  funding: "Funding source and amount"  # Optional funding information
  tags:
    - "Tag 1"
    - "Tag 2"
  team:
    - "Team Member 1"
    - "Team Member 2"
    - "Team Member 3"
  publications:
    - title: "Publication Title 1"
      authors: "Author 1, Author 2"
      venue: "Conference/Journal, Year"
      url: "/publications#publication-anchor"
    - title: "Publication Title 2"
      authors: "Author 1, Author 3"
      venue: "Conference/Journal, Year"
      url: "/publications#publication-anchor-2"
  long_description: |
    ## Project Overview

    This is where you can write a detailed project description using Markdown formatting.
    You can include headings, lists, links, and other Markdown elements here.

    ## Research Objectives

    1. First objective
    2. Second objective
    3. Third objective

    ## Technical Approach

    Describe your technical approach here.
```

3. Place the project's image in the `/assets/projects/` directory
4. The system will automatically:
   - Display the project on the projects listing page
   - Create an individual project page at `/projects/project-slug/`
   - Show featured projects on the homepage

### Adding or Updating Publications

Publications are stored in `_data/publications.yml`:

1. Open `_data/publications.yml`
2. Add a new publication entry following this structure:

```yaml
- title: "Publication Title"
  authors: "Author 1, Author 2, Author 3"
  venue: "Conference or Journal Name"
  year: 2023
  publication_type: "conference" # Options: conference, journal, book, special_issue, book_chapter
  doi: "10.1234/example.doi" # DOI without the 'https://doi.org/' prefix
  pdf: "/assets/publications/paper.pdf" # Optional local PDF
  code: "https://github.com/username/repo" # Optional code repository URL
  thumbnail: "/assets/publications/thumbnails/paper_thumbnail.jpg" # Optional thumbnail image or GIF
  abstract: "Brief abstract of the publication."
  tags:
    - "Deep Learning"
    - "Computer Vision"
    - "Neural Networks"
```

3. If including a PDF, place it in the `/assets/publications/` directory
4. For thumbnails, place images in the `/assets/publications/thumbnails/` directory
   - Recommended thumbnail size: 480px × 320px (width × height)
   - Supported formats: JPG, PNG, GIF (for animations)
5. The system will automatically:
   - Add the publication to the publications page
   - Display relevant publications on team member profiles
   - Show related publications on project pages
   - Enable filtering by publication type and tags
   - Display color-coded badges for different publication types
   - Show thumbnails in both the list view and detail view

### Adding or Updating Datasets

Datasets are stored in `_data/datasets.yml`:

1. Open `_data/datasets.yml`
2. Add a new dataset entry following this structure:

```yaml
- name: "DatasetName"
  title: "Full Dataset Title: Subtitle and Description"
  year: 2023
  url: "https://dataset-website.com"
  image: "/assets/datasets/dataset_image.jpg"
  video: "/assets/datasets/dataset_video.mp4"  # Optional video file
  description: "Detailed description of the dataset in one or two paragraphs."
  key_features:
    - "Feature 1 (e.g., 500 Identities)"
    - "Feature 2 (e.g., 15 Camera Views)"
    - "Feature 3 (e.g., 10M+ Annotations)"
  authors: "Author 1, Author 2, Author 3"
  paper_url: "https://link-to-paper.com"  # URL to the paper that introduces the dataset
```

3. Place dataset images in the `/assets/datasets/` directory
4. If including videos, place them in the same directory
   - For large videos, consider creating an optimized version (e.g., using ffmpeg)
   - Videos should be in MP4 format with H.264 encoding
5. The system will automatically:
   - Display the dataset on the datasets page
   - Play videos for datasets that have video files
   - Show key features as interactive tags
   - Provide links to the dataset website and associated papers

### Adding or Updating News

News items are stored in `_data/news.yml`:

1. Open `_data/news.yml`
2. Add a new news entry at the top of the file:

```yaml
- title: "News Title"
  date: 2023-05-01
  content: "Brief description of the news item."
  image: "/assets/news/news_image.jpg" # Optional image
  link: "https://example.com" # Optional external link
```

3. If including an image, place it in the `/assets/news/` directory
4. The system will automatically:
   - Display recent news on the homepage
   - Add the news item to the news page

## Data Flow Relationships

The website creates these automatic relationships:

- Team members ↔ Publications: Publications by a team member appear on their profile page
- Team members ↔ Projects: Team members listed in a project appear on the project page
- Projects ↔ Publications: Publications linked to a project appear on the project page
- Datasets ↔ Publications: Each dataset can link to its associated paper
- Featured projects appear on the homepage

## Design Features

The website features a modern, responsive design with:

1. **Gradient Effects**: Text and buttons use gradient coloring for visual appeal
2. **Interactive Elements**: Cards, buttons, and tags have hover effects and smooth transitions
3. **Responsive Layout**: Adapts to different screen sizes from mobile to desktop
4. **Video Integration**: Autoplay and loop capabilities for dataset presentation
5. **Consistent Navigation**: Unified style across all pages

### Color Scheme

The site uses a cohesive color scheme featuring:
- Primary gradients: Blue → Purple → Pink
- Secondary accents: Indigo, Teal, and Amber
- Each section type has a distinctive gradient

## Development

- This site uses Jekyll and Tailwind CSS
- Run `bundle exec jekyll serve --port 4001` to test the site locally
- The Jekyll build process:
  1. Reads all data from YAML files and collection directories
  2. Generates individual pages for team members from their files
  3. Uses a custom plugin to generate individual project pages from `projects.yml`
  4. Applies layouts and includes based on the site structure

## Contact

For questions about the website, please contact the lab administrator or the webmaster.
