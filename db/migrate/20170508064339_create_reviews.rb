class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.references :user, foreign_key: true
      t.references :conversation, foreign_key: true
      t.integer :usefulness
      t.integer :friendliness
      t.text :comments

      t.timestamps
    end
  end
end
