class CreateGyosiyakdoks < ActiveRecord::Migration[5.1]
  def change
    create_table :gyosiyakdoks do |t|
      t.integer :count, :default => 0
      t.text :gyosi
      t.string :roomnumber
      
      t.timestamps
    end
  end
end
