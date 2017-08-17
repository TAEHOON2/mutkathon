class CreateSiganyakdoks < ActiveRecord::Migration[5.1]
  def change
    create_table :siganyakdoks do |t|
      t.integer :count, :default => 0
      t.integer :sigan
      t.belongs_to :yakdokroom
      t.timestamps
    end
  end
end
