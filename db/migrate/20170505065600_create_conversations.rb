class CreateConversations < ActiveRecord::Migration[5.0]
  def change
    create_table :conversations do |t|
      t.references :stylist, foreign_key: { to_table: :users }
      t.references :asker, foreign_key: { to_table: :users }
      t.boolean :resolved
      t.string :question

      t.timestamps
    end
  end
end
