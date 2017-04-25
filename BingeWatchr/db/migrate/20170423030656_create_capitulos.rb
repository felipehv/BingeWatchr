class CreateCapitulos < ActiveRecord::Migration[5.0]
  def change
    create_table :capitulos do |t|
      t.string :title, null: false, default: ""
      t.integer :number, null: false
      t.references :series, foreign_key: { to_table: :series }
      t.timestamps
    end
  end
end
