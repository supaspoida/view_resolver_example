class Item
  include ActiveAttr::BasicModel

  def to_partial_path
    'items/item'
  end
end

Post  = Class.new(Item)
Video = Class.new(Item)
Photo = Class.new(Item)
