class AddPhotoToStyleboard < ActiveRecord::Migration[5.0]
  def change
    add_column :styleboards, :photo, :string
  end
end
