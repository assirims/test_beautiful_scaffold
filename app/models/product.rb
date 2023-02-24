class Product < ApplicationRecord

  include DefaultSortingConcern
  include FulltextConcern
  include CaptionConcern

  cattr_accessor :fulltext_fields do
    ["description"]
  end

  def self.permitted_attributes
    return :visible,:name,:price,:tva,:description_typetext,:description,:visible
  end

  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "description", "description_fulltext", "description_typetext", "id", "name", "price", "tva", "updated_at", "visible"]
  end

end
