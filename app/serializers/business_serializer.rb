class BusinessSerializer < ActiveModel::Serializer
  attributes :id, :name, :image_url, :location, :category_id
  has_many :reviews
end
