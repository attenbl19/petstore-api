class BusinessSerializer < ActiveModel::Serializer
  attributes :id, :name, :image_url, :location, :catergory
  has_many :reviews
end
