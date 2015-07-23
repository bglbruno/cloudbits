class Cloudbit < ActiveRecord::Base
  has_attached_file :file

  validates :file, attachment_presence: true
end
