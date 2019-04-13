class CreateClients < ActiveRecord::Migration[5.1]
  def change
    create_table :clients do |t|
      t.string :name
      t.string :domain
      t.boolean :active

      t.timestamps
    end
  end
end
