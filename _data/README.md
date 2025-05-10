# Data Files for Socia-Lab Website

This directory contains YAML data files used by the Jekyll website.

## Team Members

Team members are defined as individual markdown files in the `_team_members` directory. Each team member should have their own file with the following format:

```markdown
---
layout: member
title: "Full Name"
role: "faculty"  # Options: faculty, phd, master, staff
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

## Publications

Publications are stored in `publications.yml` with the following format:

```yaml
- title: "Publication Title"
  authors: "Author 1, Author 2, Author 3"
  venue: "Conference/Journal Name, Year"
  year: 2023
  doi: "10.1234/5678"
  link: "https://example.com/publication"
  pdf: "/assets/papers/paper.pdf"
  tags:
    - "Computer Vision"
    - "Machine Learning"
```

## Projects

Projects are stored in `projects.yml` with the following format:

```yaml
- title: "Project Title"
  description: "Description of the project"
  status: "active"  # or "completed"
  featured: true  # Whether to show on homepage
  image: "/assets/projects/project.jpg"
  website: "https://project-website.com"
  github: "https://github.com/username/project"
  demo: "https://demo-link.com"
  tags:
    - "Computer Vision"
    - "Deep Learning"
  team:
    - "Person 1"
    - "Person 2"
  publications:
    - title: "Related Publication"
      url: "/publications#pub-id"
```

## News

News items are stored in `news.yml` with the following format:

```yaml
- title: "News Title"
  date: 2023-01-01
  content: "News content summary"
  image: "/assets/news/news.jpg"
  link: "https://example.com/news"
``` 