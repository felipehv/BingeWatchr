class CreateCapitulos < ActiveRecord::Migration[5.0]
  def change
    create_table :capitulos do |t|
      t.string :title
      t.boolean :seen
      t.references :serie, foreign_key: true
      t.integer :episode
      t.integer :season
      t.integer :rating
      t.string :description

      t.timestamps
    end
  end
end

