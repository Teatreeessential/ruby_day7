class CreateBoards < ActiveRecord::Migration[5.0]
  def change
    create_table :boards do |t|
      t.string "ip_address"
      t.string "region"
      t.string "title"
      t.string "name"
      t.text "contents"
      
      t.timestamps
    end
  end
end
