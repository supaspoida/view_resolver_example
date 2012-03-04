class Item
  include ActiveAttr::BasicModel

  def self.all
    [Post.new, Video.new, Photo.new]
  end

  def to_partial_path
    'items/item'
  end
end

class Video < Item
  def to_partial_path
    'items/video'
  end
end

Post  = Class.new(Item)
Photo = Class.new(Item)
