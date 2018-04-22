class CreateGroups < ActiveRecord::Migration[5.1]
  def change
    create_table :groups do |t|
      t.string :title
      t.string :account
      t.string :location
      t.string :bank
      t.string :money
      t.string :yougtu
      t.string :name

      t.timestamps
    end
  end
end
