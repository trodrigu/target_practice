class AddDomainToTarget < ActiveRecord::Migration
  def change
    add_column :targets, :domain, :string
  end
end
