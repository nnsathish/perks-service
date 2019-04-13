class CreateRewards < ActiveRecord::Migration[5.1]
  def change
    create_table :rewards do |t|
      t.string :name
      t.integer :client_id
      t.integer :reward_type
      t.boolean :active

      t.timestamps
    end
  end
end
