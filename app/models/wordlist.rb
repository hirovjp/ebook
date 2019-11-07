class Wordlist < ApplicationRecord
  has_many :learnwordlists, :dependent => :destroy
  belongs_to :category
end
