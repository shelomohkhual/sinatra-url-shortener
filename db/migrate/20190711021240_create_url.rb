class CreateUrl < ActiveRecord::Migration[5.2]
  def change
    create_table :urls do |t|
      t.integer  :user_id
      t.integer  :user_name
      t.text :ori_url
      t.text :shrt_url
      t.timestamps
    end
  end
end
