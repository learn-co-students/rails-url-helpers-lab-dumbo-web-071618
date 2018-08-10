class AlterStudentsActive < ActiveRecord::Migration
  def change
    change_column :students , :active , :boolean ,default: 0
  end
end
