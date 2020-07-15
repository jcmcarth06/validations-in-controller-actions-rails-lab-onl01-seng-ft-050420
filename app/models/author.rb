class Author < ActiveRecord::Base
  validate :name, presence: true { error: please enter a name}
  validate :email, uniqueness: true { error: email already in use}
end
