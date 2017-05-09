class CreateProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|
      t.references :user, foreign_key: true
      t.string :first_name
      t.string :last_name
      t.string :profile_pic
      t.string :username
      t.text :bio

      t.timestamps
    end
    add_index :profiles, :username, unique: true
  end
end
