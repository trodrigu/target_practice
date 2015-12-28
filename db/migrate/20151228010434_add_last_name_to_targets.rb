class AddLastNameToTargets < ActiveRecord::Migration
  def change
    add_column :targets, :first_name, :string
    add_column :targets, :last_name, :string
    remove_column :targets, :name
  end
end
