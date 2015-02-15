class Taker < ActiveRecord::Base
  has_many :questions, :dependent => :destroy
  has_many :responses
end
