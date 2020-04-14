class CreateManagements < ActiveRecord::Migration[5.0]
  def change
    create_table :managements do |t|
      t.string :view
      t.timestamps
    end
  end
end
