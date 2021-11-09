task :serve do
  sh "bundle exec jekyll serve  --port 5678"
end 

task :build do
  sh "bundle exec jekyll build"
end

task :bw do
  sh "bundle exec jekyll build --watch"
end 

desc "stop the server"
task :stop do
  sh "ps aux |grep jekyll |awk '{print $2}' | xargs kill -9"
end
