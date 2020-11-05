class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :score, :business_id, :user_id
end
