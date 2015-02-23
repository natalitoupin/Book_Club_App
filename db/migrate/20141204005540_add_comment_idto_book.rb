class AddCommentIdtoBook < ActiveRecord::Migration
  def change
  	add_column :books, :comment_id, :integer
  end
end
