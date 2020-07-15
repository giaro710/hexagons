class CreateHexagons < ActiveRecord::Migration[6.0]
  def change
    create_table :hexagons do |t|
      t.string :title
      t.string :date
      t.text :short_description
      t.text :long_content

      t.timestamps
    end
  end
end
