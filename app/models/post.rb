class Post < ActiveRecord::Base
  validates :title, presence: true { error: 'please enter a title'}
  validates :content, length: { minimum: 100 }
  validates :category, inclusion { in: ['Fiction', 'Non-Fiction']}

end
