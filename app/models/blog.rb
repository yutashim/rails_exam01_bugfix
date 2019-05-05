class Blog < ApplicationRecord
  # ErrorCause: undefined method `comments' for Blog, association typo
  # FixReason: fix typo, has_many :comment to :comments
  has_many :comments

  validates :title, presence: true
  validates :content, presence: true
end
