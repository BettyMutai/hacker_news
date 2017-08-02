class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.column :username, :string
      t.column :image, :varchar
      t.column :email, :varchar

      t.timestamps
    end
  end
end
