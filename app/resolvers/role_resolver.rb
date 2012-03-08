class RoleResolver < ::ActionView::FileSystemResolver
  attr_reader :role

  def initialize(role)
    @role = role
    super("app/views")
  end

  def find_templates(name, prefix, partial, details)
    prefix = [prefix, role].compact * '/'
    super(name, prefix, partial, details)
  end
end
