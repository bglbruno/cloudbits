class AddAttachmentFileToCloudbits < ActiveRecord::Migration
  def self.up
    change_table :cloudbits do |t|
      t.attachment :file
    end
  end

  def self.down
    remove_attachment :cloudbits, :file
  end
end
