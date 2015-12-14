class CreateTargets < ActiveRecord::Migration
  def change
    create_table :targets do |t|
      t.string :name
      t.string :email
      t.string :business

      t.timestamps null: false
    end
  end
end
