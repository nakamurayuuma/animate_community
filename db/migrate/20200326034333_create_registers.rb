class CreateRegisters < ActiveRecord::Migration[5.0]
  def change
    create_table :registers do |t|
      t.string :title
      t.string :image
      t.string :period
      t.references :category
      t.text :content
      t.references :management
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
