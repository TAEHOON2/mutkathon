class CreateYakdokrooms < ActiveRecord::Migration[5.1]
  def change
    create_table :yakdokrooms do |t|
      t.integer :roomnumber
      t.timestamps null: false
    end
  end
end
