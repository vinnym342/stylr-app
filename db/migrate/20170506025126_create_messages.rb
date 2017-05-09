class CreateMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :messages do |t|
      t.references :conversation, foreign_key: true
      t.references :sender, foreign_key: { to_table: :users }
      t.string :message

      t.timestamps
    end
  end
end
