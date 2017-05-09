class CreateProfessionalProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :professional_profiles do |t|
      t.references :user, foreign_key: true
      t.integer :message_price

      t.timestamps
    end
  end
end
