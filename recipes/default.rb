#
# Cookbook Name:: chef-development
# Recipe:: default
#
# Copyright (C) 2014 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

# install rbenv and ruby
include_recipe "rbenv::default"
include_recipe "rbenv::ruby_build"
rbenv_ruby "2.1.0"

rbenv_gem %w{bundler berkshelf chef knife knife-solo} do
  ruby_version "2.1.0"
end
