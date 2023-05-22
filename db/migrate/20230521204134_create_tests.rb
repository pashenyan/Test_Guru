class CreateTests < ActiveRecord::Migration[6.1]
  def change
    create_table :tests do |t|
      t.string, null: false
      t.text 
      t.integer, null: false
      t.integer, null: false

      t.timestamps
    end

    def change
      change_column_default :tests, :level, from: nil, to: 1
    end  
  end
end
