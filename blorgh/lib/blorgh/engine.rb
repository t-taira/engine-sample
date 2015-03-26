module Blorgh
  class Engine < ::Rails::Engine
    isolate_namespace Blorgh

    #config.to_prepare do
    #  Dir.glob(Rails.root + "lib/concerns/**/*.rb").each do |c|
    #    require_dependency(c)
    #  end
    #end

    initializer "blorgh.assets.precompile" do |app|
      app.config.assets.precompile += %w(admin.css admin.js)
    end
  end
end
