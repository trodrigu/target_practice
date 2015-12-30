class AddRefToEmail < ActiveRecord::Migration
  def change
    add_reference :emails, :target, index: true, foreign_key: true
  end
end
