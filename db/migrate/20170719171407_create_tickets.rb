class CreateTickets < ActiveRecord::Migration[5.1]
  def change
    create_table :tickets do |t|
      t.date :date
      t.integer :price
      t.integer :quantity
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
