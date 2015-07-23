class Cloudbit < ActiveRecord::Base
  has_attached_file :file #, storage: :s3, s3_credentials: Proc.new{ |a| a.instance.s3_credentials }

  validates_attachment :file, presence: true, 
    content_type: { content_type: ['image/jpeg', 'image/gif', 'image/png', 'text/plain', 'application/pdf', 'text/html'] }

  # def s3_credentials
  #   {
  #     bucket: ENV['S3_BUCKET'],
  #     access_key_id: ENV['S3_ACCESS_KEY'],
  #     secret_access_key: ENV['S3_SECRET_KEY']
  #   }
  # end
end
