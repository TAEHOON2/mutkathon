class CreateGyosiyakdoks < ActiveRecord::Migration[5.1]
  def change
    create_table :gyosiyakdoks do |t|
      t.integer :count, :default => 0
      t.integer :gyosi
      t.belongs_to :yakdokroom
      
      t.timestamps
    end
  end
end
