class AddCommentId2ToArticles < ActiveRecord::Migration[5.2]
  def change
    remove_column :articles, :comment_id, :string
  end
end
