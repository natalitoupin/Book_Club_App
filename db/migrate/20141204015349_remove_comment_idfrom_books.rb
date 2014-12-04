class RemoveCommentIdfromBooks < ActiveRecord::Migration
  def change
  	remove_column :books, :comment_id
  end
end
