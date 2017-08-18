class CreateGyosiyakdoks < ActiveRecord::Migration[5.1]
  def change
    create_table :gyosiyakdoks do |t|
      t.float :count, :default => 0
      t.text :gyosi
      t.string :roomnumber
      t.integer :participants, :default => 0
      
      t.timestamps
    end
  end
end
