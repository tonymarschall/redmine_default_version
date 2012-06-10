module RedmineDefaultVersion
  module Patches
    module ProjectsHelperPatch
      def self.included(base) # :nodoc:
        base.send(:include, InstanceMethods)
        base.class_eval do
          alias_method_chain :version_options_for_select, :default_version_option
        end
      end

      module InstanceMethods
        def version_options_for_select_with_default_version_option(versions, selected=nil)
          selected = @project.default_version if selected.nil?
          version_options_for_select_without_default_version_option(versions, selected)
        end
      end
    end
  end
end
