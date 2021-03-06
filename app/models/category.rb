class Category < ActiveRecord::Base
  has_many :parent_categories, :dependent => :destroy
  has_many :parent, :through => :parent_categories, :source => :parent
  has_many :child_categories, :class_name => "ParentCategory", :foreign_key => "parent_id", :dependent => :destroy
  has_many :children, :through => :child_categories, :source => :category
  
  validates :name, presence: true, :uniqueness => true
  has_many :menus
  
  def update_level(lvl)
    self.level = lvl
    self.save
  end
  
  def get_food_menu
    self.where(categories: { is_drink: 'False' }).order("created_at ASC")
  end
end
