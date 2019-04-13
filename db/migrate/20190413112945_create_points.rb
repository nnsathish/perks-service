class CreatePoints < ActiveRecord::Migration[5.1]
  def change
    create_table :points do |t|
      t.integer :user_id
      t.integer :transaction_id
      t.integer :client_id
      t.integer :value
      t.boolean :expired

      t.timestamps
    end
  end
end
