# require libraries/modules here
require 'nokogiri'

def create_project_hash
  # write your code
  # This code here will just help us open the file.
  html = File.read('fixtures/kickstarter.html')
  kickstarter = Nokogiri::HTML(html)

  projects = {}

  #iterate through all the projects

  kickstarter.css("li.project.grid_4").each do |project|
    projects[project]  = {}
  end
end
