class EditRecipesTags < ActiveRecord::Migration
  def change
    add_column :recipes_tags, :created_at, :datetime
  end
end
