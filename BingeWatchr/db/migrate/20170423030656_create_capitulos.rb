class CreateCapitulos < ActiveRecord::Migration[5.0]
  def change
    create_table :capitulos do |t|
      t.string :title, null: false, default: ""
      t.integer :number, null: false
      t.integer :id_serie, null: false
      t.references(:id) :id_serie
      t.belongs_to(:series, foreign_key: true)
      t.timestamps
    end
  end
end
