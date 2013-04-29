require 'active_record'

module Acts #:nodoc:
  module Followable #:nodoc:

    def self.included(base)
      base.extend ClassMethods  
    end

    module ClassMethods
      def acts_as_followable(options={})
        has_many :followings, {:as => :follow, :dependent => :destroy}.merge(options)
        include Acts::Followable::InstanceMethods
        extend Acts::Followable::SingletonMethods
      end
    end
    
    module SingletonMethods
      def find_followings_for(obj)
        followable = ActiveRecord::Base.send(:class_name_of_active_record_descendant, self).to_s
        Following.find_followings_for_followable(followable, obj.id)
      end
      
      def find_followings_by_user(user) 
        followable = ActiveRecord::Base.send(:class_name_of_active_record_descendant, self).to_s
        Following.where(["user_id = ? and followable_type = ?", user.id, followable]).order("created_at DESC")
      end
    end
    
    # This module contains instance methods
    module InstanceMethods
      def followings_ordered_by_submitted
        Following.find_followings_for_followable(self.class.name, id)
      end

      def add_following(following)
        followings << following
      end
    end
    
  end
end

ActiveRecord::Base.send(:include, Acts::Followable)
