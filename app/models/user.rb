class User < ApplicationRecord
  scope :search, -> (search) {where "name LIKE :query", query: "%#{search}%" if search.present?}
end
