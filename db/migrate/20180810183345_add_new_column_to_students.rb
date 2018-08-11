class AddNewColumnToStudents < ActiveRecord::Migration
  def change
    add_column :students, :activate, :boolean
  end
end
