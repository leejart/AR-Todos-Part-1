class User < ActiveRecord::Base
  validates :email, :presence => true
  has_many :todo_lists
  has_many :tasks, :through => :todo_lists



end
