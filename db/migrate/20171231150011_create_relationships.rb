class CreateRelationships < ActiveRecord::Migration[5.0]
  def change
    create_table :relationships do |t|
      t.references :follower, foreign_key: true
      t.references :followed, foreign_key: true

      t.timestamps null: false
      t.index [:follower_id, :followed_id], unique: true
    end
  end
end
