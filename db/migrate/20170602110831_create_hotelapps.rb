class CreateHotelapps < ActiveRecord::Migration
  def change
    create_table :hotelapps do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :country
      t.bigint :contact
      t.integer :zipcode
      t.timestamps
    end
  end
end
