class Cloudbit < ActiveRecord::Base
  has_attached_file :file #, storage: :s3, s3_credentials: Proc.new{ |a| a.instance.s3_crentials }

  validates :file, attachment_presence: true

  # def s3_credentials
  #   {
  #     bucket: ENV['S3_BUCKET'],
  #     access_key_id: ENV['S3_ACCESS_KEY'],
  #     secret_access_key: ENV['S3_SECRET_KEY']
  #   }
  # end
end
