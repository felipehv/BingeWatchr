class CreateRatingSeries < ActiveRecord::Migration[5.0]
  def change
    create_table :rating_series do |t|
      t.references :user, foreign_key: true
      t.references :serie, foreign_key: true
      t.integer :value

      t.timestamps
    end
  end
end
