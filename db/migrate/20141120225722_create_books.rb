class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.integer :likes
      t.integer :dislikes
      t.string :description

      t.timestamps
    end
  end
end
