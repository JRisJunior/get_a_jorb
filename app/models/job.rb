class Job < ApplicationRecord
  belongs_to :company
  has_many :job_post_tags
  has_many :tags, through: :job_post_tags
end
