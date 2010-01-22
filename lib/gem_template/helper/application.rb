Application.class_eval do
  helpers do
    
    def css(name, media='screen, projection')
      options = {
        :href => "/css/#{name}.css",
        :media => "#{media}",
        :rel => "stylesheet",
        :type => "text/css"
      }
      haml "%link#{options.inspect}", :layout => false
    end
    
    def javascripts(&block)
      (@js || []).each do |path|
        block.call path
      end
    end
    
    def js(name)
      options = {
        :type => "text/javascript",
        :src => "/js/#{name}.js"
      }
      haml "%script#{options.inspect}", :layout => false
    end
    
    def partial(name, options={})
      haml name, options.merge(:layout => false)
    end
    
    def stylesheets(&block)
      (@css || []).each do |path|
        block.call path
      end
    end
  end
end