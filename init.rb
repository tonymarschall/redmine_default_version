require 'redmine'
require 'dispatcher'

Dispatcher.to_prepare do
  Project.send(:include, RedmineDefaultVersion::Patches::ProjectPatch) unless Project.include?(RedmineDefaultVersion::Patches::ProjectPatch)
end

Redmine::Plugin.register :redmine_default_version do
  name 'Redmine Default Version plugin'
  author 'Tony Marschall'
  description 'With this plugin its possible to add a default version to a project. First you have to setup a version then you can choose a default version in project -> settings.'
  version '0.0.1'
  url 'http://example.com/path/to/plugin'
  author_url 'http://example.com/about'
end
