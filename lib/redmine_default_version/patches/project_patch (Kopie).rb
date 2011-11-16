module RedmineDefaultVersion
  module Patches
    module ProjectPatch

      def self.included(base) # :nodoc:
        #base.extend(ClassMethods)
        #base.send(:include, InstanceMethods)

        # Same as typing in the class
        base.class_eval do
          unloadable # Send unloadable so it will not be unloaded in development
          belongs_to :default_version, :class_name => 'Version', :foreign_key => 'default_version_id'
        end
      end
      
    end
  end
end
