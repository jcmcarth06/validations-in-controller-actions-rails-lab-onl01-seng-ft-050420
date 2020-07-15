class Author < ActiveRecord::Base
  validates :name, presence: true { error: 'please enter a name' }
  validates :email, uniqueness: true { error: 'email already in use' }
end
