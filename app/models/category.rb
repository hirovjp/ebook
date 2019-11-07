class Category < ApplicationRecord
  has_many :wordlists, :dependent => :destroy
  has_many :lessons, :dependent => :destroy
end
