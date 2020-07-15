class AddPathToHexagons < ActiveRecord::Migration[6.0]
  def change
    add_reference :hexagons, :path, index: true
  end
end
