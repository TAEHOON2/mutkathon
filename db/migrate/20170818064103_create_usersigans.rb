class CreateUsersigans < ActiveRecord::Migration[5.1]
  def change
    create_table :usersigans do |t|
      t.text :sigan
      t.integer :count
      t.belongs_to :user
      t.string :email
      t.timestamps
    end
  end
end
