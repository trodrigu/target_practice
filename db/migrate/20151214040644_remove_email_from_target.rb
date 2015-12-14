class RemoveEmailFromTarget < ActiveRecord::Migration
  def change
    remove_column :targets, :email
  end
end
