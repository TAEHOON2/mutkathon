class CreateSiganyakdoks < ActiveRecord::Migration[5.1]
  def change
    create_table :siganyakdoks do |t|
      t.text :count
      t.text :sigan
      t.string :roomnumber
      t.timestamps
    end
  end
end
