require './config/application'

class CreateTables < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.timestamps
    end
  end
  
  def change
    create_table :todo_lists do |t|
      t.string :name
      t.belongs_to :user
      t.timestamps
    end
  end

  def change
    create_table :tasks do |t|
      t.string :descriptions
      t.belongs_to :todo_list
      t.string :status
      t.timestamps
    end
  end
end
 
