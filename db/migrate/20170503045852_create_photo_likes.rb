class CreatePhotoLikes < ActiveRecord::Migration[5.0]
  def change
    create_table :photo_likes do |t|
      t.references :user, foreign_key: true
      t.references :photo, foreign_key: true
      t.boolean :liked

      t.timestamps
    end
  end
end
