class CreatePhotos < ActiveRecord::Migration[5.0]
  def change
    create_table :photos do |t|
      t.string :photo
      t.references :styleboard, foreign_key: true
      t.text :caption

      t.timestamps
    end
  end
end
