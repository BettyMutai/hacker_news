class CreateLinks < ActiveRecord::Migration[5.1]
  def change
    create_table :links do |t|
      t.column :url, :varchar
      t.column :user_id, :integer

      t.timestamps
    end
  end
end
