class ItemsResolver < ::ActionView::FileSystemResolver
  attr_reader :valid_names

  def initialize(valid_names)
    @valid_names = valid_names
    super("app/views")
  end

  def find_templates(name, prefix, partial, details)
    return [] unless valid_names.include?(name)
    super(name, "items", partial, details).presence ||
      super("item", "items", partial, details)
  end
end
