class CreateWatchLaters < ActiveRecord::Migration[5.0]
  def change
    create_table :watch_laters do |t|
      t.references :user, foreign_key: true
      t.references :serie, foreign_key: true

      t.timestamps
    end
  end
end
