task :runwindows do
    puts '* Changing the codepage'
    `chcp 65001`
    puts '* Running Jekyll'
    `jekyll --server --auto`
end

require "rubygems"
require 'rake'
require 'yaml'
require 'time'

SOURCE = "."
CONFIG = {
  'layouts' => File.join(SOURCE, "_layouts"),
  'posts' => File.join(SOURCE, "_posts"),
  'draft' => File.join(SOURCE, "_draft"),
  'post_ext' => "markdown",
}

#Usage: rake write["title",category]
desc "Given a title as an argument, create a new post file"
task :write, [:title, :category] do |t, args|
  filename = "#{Time.now.strftime('%Y-%m-%d')}-#{args[:title].gsub(/\s/, '-').downcase}.markdown"
  path = File.join("_draft", filename)
  if File.exist? path; raise RuntimeError.new("Won't clobber #{path}"); end
  File.open(path, 'w') do |file|
    file.write <<-EOS
---
layout: post
categories: 
 - #{args[:category]}
title: #{args[:title]}
tags:
  - 
date: #{Time.now.strftime('%Y-%m-%d %k:%M:%S')}
---
EOS
    end
    puts "Now open #{path} in an editor."
    system "open #{path}"
 end #task rake write

#Usage: rake page["title"]
desc "Given a title as an argument, create a new post file"
task :page, :title do |t, args|
  filename = "#{args.title.gsub(/\s/, '-').downcase}.markdown"
  path = File.join("pages", filename)
  if File.exist? path; raise RuntimeError.new("Won't clobber #{path}"); end
  File.open(path, 'w') do |file|
    file.write <<-EOS
---
layout: page
title: #{args.title}
date: #{Time.now.strftime('%Y-%m-%d %k:%M:%S')}
---
EOS
    end
    puts "Now open #{path} in an editor."
    system "open #{path}"
 end #task rake page

desc "Launch preview environment"
task :preview do
  system "jekyll --rdiscount --server"
end # task :preview

desc "Building the site and deploy to remote"
task :deploy do
 system "jekyll --rdiscount && rsync -avz --progress --delete _site/ XXX@XXX.com:/home/jekyll/ "
end # task :deploy

#Load custom rake scripts
Dir['_rake/*.rake'].each { |r| load r }
