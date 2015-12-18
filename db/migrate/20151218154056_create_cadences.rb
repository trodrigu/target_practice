class CreateCadences < ActiveRecord::Migration
  def change
    create_table :cadences do |t|
      t.string :permutation, null: false
      t.timestamps null: false
    end
  end
end
