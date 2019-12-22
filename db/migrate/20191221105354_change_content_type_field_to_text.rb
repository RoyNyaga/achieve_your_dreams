class ChangeContentTypeFieldToText < ActiveRecord::Migration[5.2]
  def change
  	change_column :campaigns, :content, :text
  end
end
