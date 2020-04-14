class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string  :name
      t.string  :email
      t.integer :gender_id
      t.integer :blood_id
      t.integer :year_id
      t.integer :month_id
      t.integer :day_id
      t.integer :prefecture_id
      t.string  :favorite_anime
      t.string  :favorite_genre
      t.string  :favorite_voice_actor
      t.text    :about_me

      t.timestamps
    end
  end
end
