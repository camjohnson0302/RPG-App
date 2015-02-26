class CreateHomeworlds < ActiveRecord::Migration
  def change
    create_table :homeworlds do |t|
    	t.string :planet_type
    	t.text :description
      t.string :summary
    	t.string :img_url
      t.timestamps
    end

   create_table :careers_homeworlds, id: false do |t|
      t.belongs_to :career, index: true
      t.belongs_to :homeworld, index: true
    end





  end
end
