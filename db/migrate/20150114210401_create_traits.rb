class CreateTraits < ActiveRecord::Migration
  def change
    create_table :traits do |t|
      t.string :name
      t.text :description
      t.timestamps
    end

    create_table :homeworlds_traits, id: false do |t|
      t.belongs_to :homeworld, index: true
      t.belongs_to :trait, index: true
    end

    create_table :careers_traits, id: false do |t|
      t.belongs_to :career, index: true
      t.belongs_to :trait, index: true
    end





  end
end
