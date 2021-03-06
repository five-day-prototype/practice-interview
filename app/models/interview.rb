class Interview < ActiveRecord::Base
  belongs_to :user

  validates :job_url, presence: true
  validates :resume_url, presence: true, format: URI::regexp(%w(http https))
  validates :time, presence: true
end
