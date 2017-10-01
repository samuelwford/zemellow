class Story < ActiveRecord::Base
  has_many :parts, dependent: :destroy
end
