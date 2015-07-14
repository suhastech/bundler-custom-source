class Source < Bundler.plugin("1", :source)

	attr_accessor :options

	def initialize (options)
		# Options from Gemfile
		@options = options

	end

	def spec_array (*args)

		# Return an array of gemspecs for your source, you can implement your own caching mechanism if you want
		# Something like
		spec = Gem::Specification.new do |s|
		              s.name     = "something"
		              s.source   = self
		              s.version  = Gem::Version.new(1)
		              s.platform = Gem::Platform::RUBY
		              s.summary  = "Fake gemspec for something"
		              s.authors  = ["no one"]
              end 

        [spec]

	end

	def install(spec, force = false)
		# Implement your install routine
        ["After Message", nil]

	end

end
