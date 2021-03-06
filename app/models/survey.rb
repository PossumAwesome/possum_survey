class Survey < ActiveRecord::Base
  has_many :questions
  has_many :options, through: :questions
  has_many :responses, through: :questions
  has_many :takers

  accepts_nested_attributes_for :questions,
    reject_if: proc { |attributes| attributes['text'].blank? }

end
