class Wordlist < ApplicationRecord
  has_many :learnwordlists, :dependent => :destroy
  belongs_to :category
  belongs_to :lesson
end
