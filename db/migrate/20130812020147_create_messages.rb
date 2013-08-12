class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.integer :from_id, :to_id
      t.text :content
      t.timestamps
    end
  end
end
