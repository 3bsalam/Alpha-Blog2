class AddAssociationToArticles < ActiveRecord::Migration[6.1]
  def change
    change_table :articles do |t|
      t.belongs_to :user
    end
  end
end
