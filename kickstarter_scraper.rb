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
    title = project.css("h2.bbcard_name strong a").text
    projects[title.to_sym] = {}
  end
end
