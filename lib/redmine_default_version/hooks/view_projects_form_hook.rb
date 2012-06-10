module RedmineDefaultVersion
  module Hooks
    class ViewProjectsFormHook < Redmine::Hook::ViewListener
      render_on :view_projects_form, :partial => 'project_default_version/form'
    end
  end
end

