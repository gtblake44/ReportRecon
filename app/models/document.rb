class Document < ActiveRecord::Base
  belongs_to :section
  has_many :annotations
end
