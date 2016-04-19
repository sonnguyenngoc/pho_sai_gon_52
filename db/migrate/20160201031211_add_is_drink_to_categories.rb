class AddIsDrinkToCategories < ActiveRecord::Migration
  def change
    add_column :categories, :is_drink, :string, default: "False"
  end
end
