module ActsAsFollowable
  module Following
    
    def self.included(following_model)
      following_model.extend Finders
      following_model.scope :in_order, following_model.order('created_at ASC')
      following_model.scope :recent, following_model.order('created_at DESC')
    end
    
    module Finders
      def find_following_by_user(user)
        where(["user_id = ?", user.id]).order("created_at DESC")
      end

      def find_followings_for_followable(followable_str, followable_id)
        where(["followable_type = ? and followable_id = ?", followable_str, followable_id]).order("created_at DESC")
      end

      def find_followable(followable_str, followable_id)
        followable_str.constantize.find(followable_id)
      end
    end
  end
end