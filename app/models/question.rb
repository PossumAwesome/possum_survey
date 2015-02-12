class Question < ActiveRecord::Base
  belongs_to :survey
  has_many :options
  accepts_nested_attributes_for :options,
    :reject_if => :all_blank
end
