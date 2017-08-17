class CreateYakdokrooms < ActiveRecord::Migration[5.1]
  def change
    create_table :yakdokrooms do |t|
      t.string :roomnumber
      t.string :yakdoktype
      t.timestamps null: false
    end
  end
end
