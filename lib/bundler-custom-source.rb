class BundlerCustomSource < Bundler.plugin("1")
  name "Custom source plugin"


  # Users can now define 
  #> gem "something", :custom => "pass-something"
  # The passed value will go to initializer method
  source "custom" do
  	
    require_relative "source"
    Source
  end


end
