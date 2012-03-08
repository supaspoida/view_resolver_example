class Item
  include ActiveAttr::BasicModel

  def self.all
    [Post.new, Video.new, Photo.new]
  end

  def self.subclass_names
    subclasses.map { |c| c.name.underscore }
  end

  def to_partial_path
    "items/#{self.class.name.underscore}"
  end
end

Photo = Class.new(Item)
Post  = Class.new(Item)
Video = Class.new(Item)
