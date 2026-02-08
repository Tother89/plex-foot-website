class CreateMediaRequests < ActiveRecord::Migration[7.2]
  def change
    create_table :media_requests do |t|
      t.references :user, null: false, foreign_key: true
      t.references :media_item, null: false, foreign_key: true
      t.string :status

      t.timestamps
    end
  end
end
