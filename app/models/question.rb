class Question < ApplicationRecord
  validates :question, presence: true
  validates :option1, presence: true
  validates :option2, presence: true
  validates :option3, presence: true
  validates :option4, presence: true
  validates :hint, presence: true

  def random_options
    [option1, option2, option3, option4].shuffle
  end
end
