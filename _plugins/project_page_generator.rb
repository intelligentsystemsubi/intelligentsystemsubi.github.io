module Jekyll
  class ProjectPageGenerator < Generator
    safe true

    def generate(site)
      # Get projects from _data/projects.yml
      projects = site.data['projects']
      
      # Create a page for each project
      projects.each do |project|
        next unless project['id'] # Skip projects without an ID
        
        # Create a new page
        site.pages << ProjectPage.new(site, site.source, 'projects', project)
      end
    end
  end

  # A Page subclass that generates individual project pages
  class ProjectPage < Page
    def initialize(site, base, dir, project)
      @site = site
      @base = base
      @dir  = File.join(dir, project['id'])
      @name = 'index.html'

      self.process(@name)
      self.read_yaml(File.join(base, '_layouts'), 'project_page.html')
      
      # Set the page's data
      self.data['project_id'] = project['id']
      self.data['title'] = project['title']
      
      # Add metadata for SEO
      self.data['description'] = project['description']
      self.data['image'] = project['image'] if project['image']
      self.data['tags'] = project['tags'] if project['tags']
    end
  end
end 