class Lesson < ApplicationRecord
  has_many :results, :dependent => :destroy
  belongs_to :category
  has_many :wordlists, :dependent => :destroy
end
