class AddPhotoLocation < ActiveRecord::Migration[5.0]
  def change
    add_column(:photos, :location, :string)
  end
end
