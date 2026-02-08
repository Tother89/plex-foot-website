class CreateMediaItems < ActiveRecord::Migration[7.2]
  def change
    create_table :media_items do |t|
      t.string :tmdb_id
      t.string :media_type
      t.string :title
      t.integer :release_year

      t.timestamps
    end
  end
end
