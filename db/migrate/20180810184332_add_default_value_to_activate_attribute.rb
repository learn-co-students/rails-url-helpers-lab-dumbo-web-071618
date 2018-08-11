class AddDefaultValueToActivateAttribute < ActiveRecord::Migration
  def change
    change_column :students, :activate, :boolean, default: false
  end
end
