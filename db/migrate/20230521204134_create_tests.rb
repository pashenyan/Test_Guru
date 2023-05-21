class CreateTests < ActiveRecord::Migration[6.1]
  def change
    create_table :tests do |t|
      t.string :title, null: false
      t.text :description
      t.integer :duration, null: false
      t.integer :price, null: false

      t.timestamps
    end
    
    def change
      change_column_default :tests, :level, from: nil, to: 1
    end  
  end
end
