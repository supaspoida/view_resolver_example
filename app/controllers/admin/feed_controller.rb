require 'objects'

module Admin
  class FeedController < ::ApplicationController
    append_view_path ItemsResolver.new

    expose(:things) do
      [Post.new, Video.new, Photo.new]
    end

  end
end
