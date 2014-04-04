class CreateRecipesTagsAgain < ActiveRecord::Migration
  def change
    create_table :recipes_tags do |t|
      t.belongs_to :recipes
      t.belongs_to :tags

      t.timestamps
    end
  end
end
