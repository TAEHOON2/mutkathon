class CreateUsergyosis < ActiveRecord::Migration[5.1]
  def change
    create_table :usergyosis do |t|
      t.string :roomnumber
      t.string :string
      t.text :gyosi
      t.integer :count
      t.belongs_to :user
      t.string :email
      
      t.timestamps
    end
  end
end
