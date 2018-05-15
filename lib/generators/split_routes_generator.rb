# rails g split_routes admin
class SplitRoutesGenerator < Rails::Generators::NamedBase # :nodoc:
  source_root File.expand_path(File.join(File.dirname(__FILE__), 'templates'))

  desc "Copy route file template to application config/routes directory"
  def copy_initialize_file
    template 'route.rb', "config/routes/#{file_name}.rb"
  end
end