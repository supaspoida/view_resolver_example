class FeedController < ApplicationController
  append_view_path ItemsResolver.new(Item.subclass_names)

  expose(:things) { Item.all }
end
