class StylesGenerator < Rails::Generator::Base
  
  def manifest
    record do |m|
      m.directory('public/stylesheets')
      m.file "reset.css", "public/stylesheets/styles.css"
      m.file "typography.less", "public/stylesheets/typography.less"
    end
  end
  
  protected

  def usage
    "Usage: #{$0} #{spec.name}"
  end
end
