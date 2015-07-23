class RemoveNameFromCloudbit < ActiveRecord::Migration
  def change
    remove_column :cloudbits, :name
  end
end
