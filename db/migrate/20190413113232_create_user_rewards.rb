class CreateUserRewards < ActiveRecord::Migration[5.1]
  def change
    create_table :user_rewards do |t|
      t.integer :user_id
      t.integer :client_id
      t.integer :reward_id
      t.boolean :expired
      t.integer :quantity

      t.timestamps
    end
  end
end
