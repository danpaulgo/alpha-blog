class AddYearToArticles < ActiveRecord::Migration[5.0]
  def change
    add_column :articles, :year, :integer
  end
end
