class AddCommentIdToComments < ActiveRecord::Migration[5.2]
  def change
    add_column :comments, :comment_id, :string
  end
end
