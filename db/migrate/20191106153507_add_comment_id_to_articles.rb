class AddCommentIdToArticles < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :comment_id, :string
  end
end
