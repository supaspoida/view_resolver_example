require 'objects'

class FeedController < ApplicationController
  expose(:things) { Item.all }
end
