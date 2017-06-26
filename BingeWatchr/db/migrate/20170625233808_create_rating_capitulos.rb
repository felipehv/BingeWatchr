class CreateRatingCapitulos < ActiveRecord::Migration[5.0]
  def change
    create_table :rating_capitulos do |t|
      t.references :user, foreign_key: true
      t.references :capitulo, foreign_key: true
      t.integer :value

      t.timestamps
    end
  end
end
