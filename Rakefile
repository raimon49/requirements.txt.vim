#!/usr/bin/env rake

task :ci => [:dump, :test]

task :dump do
  sh 'vim --version'
end

task :currentv do
  sh 'git ls | xargs grep -n \'Version:\''
end

task :test do
  sh 'bundle exec vim-flavor test'
end

# vim: et sw=2 ts=2 sts=2:
