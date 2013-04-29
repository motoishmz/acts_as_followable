class Following < ActiveRecord::Base

  include ActsAsFollowable::Following

  belongs_to :followable, :polymorphic => true

  default_scope :order => 'created_at ASC'

  # NOTE: Favorite belongs to a user
  belongs_to :user
end