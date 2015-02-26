class CreateCareers < ActiveRecord::Migration
  def change
    create_table :careers do |t|
    	t.string :name
    	t.string :description
    	t.string :pic_url
      t.timestamps
    end
  end
end
