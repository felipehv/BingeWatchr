class CreateSeenCapitulos < ActiveRecord::Migration[5.0]
  def change
    create_table :seen_capitulos do |t|
      t.references :user, foreign_key: true
      t.references :capitulo, foreign_key: true

      t.timestamps
    end
  end
end
