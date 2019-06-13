module AppStore
  # * Struct is a simple version of class
  App = Struct.new(:name, :developer, :version)

  APPS = [
    App.new(:Chat, :facebook, 2.0),
    App.new(:Twitter, :twiter, 5.9),
    App.new(:Weather, :yahoo, 10.15)
  ]

  def self.find_app(name)
    APPS.find { |app| app.name == name }
  end
end
