desc "Build and serve your website in folder _site. Use: rake server[<portnumber>] otherwise a random port will be chosen"
task :serve, [:port] do |t, args|
  sh "bundle exec jekyll serve --port #{ args[:port] or Integer(1000+9000*rand())}"
end 

desc "Build your website in folder _site"
task :build do
  sh "bundle exec jekyll build"
end

desc "Watch changes and rebuild web site each time some change occurs"
task :bw do
  sh "bundle exec jekyll build --watch"
end 

desc "Makes the folder '_site' a repo. Use: rake setup[aluXXXX]"
task :setup, [:url_remoto] => [:clean_site, :build] do |t, args|
  sh "cd _site && git init . && git config --global init.defaultBranch master && git add -f . && git remote add origin https://#{args[:url_remoto]}.github.io"
end

desc "Removes everything inside the folder _site"
task :clean_site do 
  sh "rm -fR _site"
end

task :clean => [:clean_site]

desc "Deploy all the files inside _site to GitHub. Assumes _site is already a repo"
task :deploy => [:setup] do 
  sh "cd _site && git add -f . && git commit -am new-deploy && git push -fu origin master"
end
 
desc "Deploy your web site to github and push the changes in the root repo"
task :default => :deploy do
  sh "git add .; git commit -am new-version; git push -u origin master"
end

require 'rake'

task :my_task, [:arg1, :arg2] do |t, args|
  puts "Args were: #{args} of class #{args.class}"
  puts "arg1 was: '#{args[:arg1]}' of class #{args[:arg1].class}"
  puts "arg2 was: '#{args[:arg2]}' of class #{args[:arg2].class}"
end
