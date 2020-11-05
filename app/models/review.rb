class Review < ApplicationRecord
  belongs_to :business
  belongs_to :user

def avg_score
  reviews.average(:score).round(2).to_f
end

end
