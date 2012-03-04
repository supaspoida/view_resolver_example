class ItemsResolver < ::ActionView::FileSystemResolver

  def initialize
    super("app/views")
  end

  def find_templates(name, prefix, partial, details)
    super(name, "items", partial, details)
  end
end
