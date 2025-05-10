# Team Members

This directory contains individual markdown files for each team member of the Socia-Lab. Each team member has their own file with YAML front matter that defines their information and a markdown body that provides their biography.

## How to Add a New Team Member

1. Create a new file with the format `firstname_lastname.md` in this directory.
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
supervisor: "Faculty Member Name"  # For students: must match the faculty member's title exactly
co_supervisor: "Another Faculty Name"  # Optional: for students with multiple supervisors
joining_year: 2023  # Year when the member joined the lab
active: true  # Whether this person is currently active in the lab (set to false for alumni)
departure_year: 2025  # Optional: year when the member left (for alumni)
current_affiliation: "Organization Name"  # Optional: where alumni are working now
research_interests:
  - "Interest 1"
  - "Interest 2"
  - "Interest 3"
---

Write a detailed biography here. This can be multiple paragraphs.

This text will be displayed on the person's individual profile page.

You can use **Markdown** formatting here to add links, lists, or emphasis.
```

3. Place the team member's photo in the `/assets/team/` directory with their name as the filename.

## Available Roles

- `faculty`: For professors and senior researchers
- `postdoc`: For post-doctoral researchers
- `phd`: For PhD students
- `master`: For Master's students
- `staff`: For research and technical staff

## Member Status

- `active: true` - Current members of the lab
- `active: false` - Alumni or former members
- `joining_year` - The year when the person joined the lab (used for sorting)
- `departure_year` - Optional field for alumni to indicate when they left the lab
- `current_affiliation` - Optional field for alumni to show their current workplace or position

Alumni members are automatically displayed on the special `/alumni/` page while also appearing in the appropriate role section of the team page with visual distinctions (grayscale images and inactive status indicators).

## Student-Faculty Relationships

The `supervisor` field is used to associate students with their faculty supervisors:

- For PhD and Master students, add the `supervisor` field with the exact title of the faculty member (as it appears in their own file)
- If a student has multiple supervisors, use the `co_supervisor` field for the secondary supervisor
- Students will be grouped by their primary supervisor on the team page
- Students with co-supervisors will show both supervisors in their profile
- Students without a supervisor specified will appear in an "Other Students" section
- Example:

```markdown
---
layout: member
title: "Student Name"
role: "phd"
position: "PhD Candidate"
supervisor: "Hugo Proença"  # Must match faculty member's title exactly
co_supervisor: "João C. Neves"  # Optional secondary supervisor
joining_year: 2022
active: true
# Other fields...
---
```

## Display Order

Team members are displayed on the team page grouped by their role and, for students, by their supervisor. Within each group, they are sorted by joining year (most recent first) and then alphabetically by their names.

## Individual Member Pages

Each team member will automatically have their own page at `/team/firstname_lastname/` with:

- Contact information
- Research interests
- Biography
- Publications (automatically fetched from the publications database if they match the author name)

## Images

Profile images should follow these guidelines:

1. Place images in the `/assets/team/` directory with descriptive filenames
2. Use clear, professional headshots or portrait photos
3. Image dimensions should maintain a roughly 3:4 aspect ratio (width:height)
4. **Minimum width**: Images should be at least 300px wide for proper display
5. **Recommended size**: 500-800px in width, with appropriate height
6. For consistent display across the website, crop images before uploading
7. Acceptable formats: JPG, PNG (with transparent background if desired)

The website is configured to display images with minimum width requirements to ensure they display properly. Images that are too small will be automatically enlarged to meet minimum size requirements, which may affect quality. 