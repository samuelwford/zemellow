class Story < ApplicationRecord
  has_many :parts, dependent: :destroy
end
