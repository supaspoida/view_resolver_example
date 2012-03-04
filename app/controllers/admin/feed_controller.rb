require 'objects'

module Admin
  class FeedController < ::ApplicationController
    append_view_path ItemsResolver.new

    expose(:things) { Item.all }
  end
end
