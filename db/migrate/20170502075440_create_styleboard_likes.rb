class CreateStyleboardLikes < ActiveRecord::Migration[5.0]
  def change
    create_table :styleboard_likes do |t|
      t.references :user, foreign_key: true
      t.references :styleboard, foreign_key: true
      t.boolean :liked

      t.timestamps
    end
  end
end
