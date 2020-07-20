class RemoveLongContentFromHexagons < ActiveRecord::Migration[6.0]
  def change
    remove_column :hexagons, :long_content
  end
end
