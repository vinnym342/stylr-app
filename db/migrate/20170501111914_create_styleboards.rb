class CreateStyleboards < ActiveRecord::Migration[5.0]
  def change
    create_table :styleboards do |t|
      t.references :user, foreign_key: true
      t.string :name
      t.text :description
      t.boolean :public

      t.timestamps
    end
  end
end
