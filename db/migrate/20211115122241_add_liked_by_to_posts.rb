class AddLikedByToPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :liked_by, :text
  end
end
