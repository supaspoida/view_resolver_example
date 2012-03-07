class Item
  include ActiveAttr::BasicModel

  def self.all
    [Post.new, Video.new, Photo.new]
  end

  def to_partial_path
    "items/item"
  end
end

Photo = Class.new(Item)
Post  = Class.new(Item)
Video = Class.new(Item)
