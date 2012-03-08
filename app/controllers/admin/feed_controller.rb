module Admin
  class FeedController < ::ApplicationController
    append_view_path ItemsResolver.new(Item.subclass_names)

    before_filter do
      prepend_view_path RoleResolver.new(params[:role])
    end

    expose(:things) { Item.all }
  end
end
