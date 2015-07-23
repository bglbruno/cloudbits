class Cloudbit < ActiveRecord::Base
  has_attached_file :file

  validates_attachment :file, presence: true, 
    content_type: { content_type: ['image/jpeg', 'image/gif', 'image/png', 'text/plain', 'application/pdf', 'text/html'] }
end
