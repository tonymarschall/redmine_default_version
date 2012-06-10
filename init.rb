require 'redmine'

ActionDispatch::Callbacks.to_prepare do
  Project.send(:include, RedmineDefaultVersion::Patches::ProjectPatch) unless Project.include?(RedmineDefaultVersion::Patches::ProjectPatch)
  ProjectsHelper.send(:include, RedmineDefaultVersion::Patches::ProjectsHelperPatch) unless ProjectsHelper.include?(RedmineDefaultVersion::Patches::ProjectsHelperPatch)
end

Redmine::Plugin.register :redmine_default_version do
  name 'Redmine Default Version plugin'
  author 'Tony Marschall'
  description 'With this plugin its possible to add a default version to a project. First you have to setup a version then you can choose a default version in project -> settings.'
  version '0.0.1'
  url ' https://github.com/tonymarschall/redmine_default_version/'
end

require_dependency 'redmine_default_version/hooks/view_projects_form_hook'
