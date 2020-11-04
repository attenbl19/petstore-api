class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :score, :businesses_id, :users_id
end
