class CreatePlayerCharacters < ActiveRecord::Migration
  def change
    create_table :player_characters do |t|
    	t.integer :level
    	t.integer :fate
    	t.integer :current_fate
    	t.integer :wounds
    	t.integer :current_wounds
    	t.integer :corruption
    	t.integer :insanity
    	t.integer :experience
    	t.integer :spendable_experience
    	t.integer :credits
    	t.text :description
    	t.text :background
    	t.text :public_background
    	t.string :img_url
      t.timestamps
    end
  end
end
