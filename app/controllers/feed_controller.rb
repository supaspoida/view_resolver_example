require 'objects'

class FeedController < ApplicationController

  expose(:things) do
    [Post.new, Video.new, Photo.new]
  end

end
