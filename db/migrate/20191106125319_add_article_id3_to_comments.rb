class AddArticleId3ToComments < ActiveRecord::Migration[5.2]
  def change
    add_column :comments, :article_id, :string
  end
end
