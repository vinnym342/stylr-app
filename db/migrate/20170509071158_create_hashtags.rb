class CreateHashtags < ActiveRecord::Migration[5.0]
  def change
    create_table :hashtags do |t|
      t.refernces :styleboard
      t.string :tag

      t.timestamps
    end
  end
end
