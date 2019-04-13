class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :email
      t.string :name
      t.date :dob
      t.integer :client_id
      t.integer :tier

      t.timestamps
    end
  end
end
