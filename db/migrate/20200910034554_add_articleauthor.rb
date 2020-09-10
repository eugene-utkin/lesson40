class AddArticleauthor < ActiveRecord::Migration[6.0]
  def change
    add_column :articles, :articleauthor, :string
  end
end
