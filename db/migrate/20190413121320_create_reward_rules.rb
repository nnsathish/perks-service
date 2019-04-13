class CreateRewardRules < ActiveRecord::Migration[5.1]
  def change
    create_table :reward_rules do |t|
      t.integer :client_id
      t.integer :reward_id
      t.string :rule_type
      t.integer :rule_value
      t.integer :duration
      t.string :duration_unit
      t.boolean :recurring

      t.timestamps
    end
  end
end
