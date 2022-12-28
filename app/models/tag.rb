class Tag < ApplicationRecord
  has_many :job_post_tags
  has_many :jobs, through: :job_post_tags
end
