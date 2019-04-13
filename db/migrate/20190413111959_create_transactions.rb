class CreateTransactions < ActiveRecord::Migration[5.1]
  def change
    create_table :transactions do |t|
      t.integer :client_id
      t.integer :user_id
      t.decimal :amount
      t.string :currency
      t.boolean :domestic

      t.timestamps
    end
  end
end
