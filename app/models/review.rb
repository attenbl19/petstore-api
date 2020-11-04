class Review < ApplicationRecord
  belongs_to :businesses
  belongs_to :users

def avg_score
  reviews.average(:score).round(2).to_f
end

end
