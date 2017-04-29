class CreateCapitulos < ActiveRecord::Migration[5.0]
  def change
    create_table :capitulos do |t|
      t.string :name
      t.references :serie, foreign_key: true

      t.timestamps
    end
  end
end
