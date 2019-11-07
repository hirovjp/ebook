class User < ApplicationRecord
  has_many :results
  has_many :learnwordlists
end
