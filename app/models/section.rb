class Section < ActiveRecord::Base
  belongs_to :category
  has_many :documents
end
