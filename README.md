# bundler-custom-source


This is a simple boilerplate custom source for Bundler. Still a work in progress. You need to use my fork to work http://github.com/suhastech/bundler

```
gem build bundler-custom-source.gemspec
gem install bundler-custom-source-0.0.0.gem
```

After this, the plugin can be used in bundler by having this in the Gemfile

```
plugin "custom-source"

gem "something", :custom => "passing-something"
```

While including the plugin, the name of your plugin should be "bundler-plugin-name"
Users can then include it by 

```
plugin "plugin-name"
```


The :custom parameter is registered in this Plugin. You can have anything maybe :svn, :s3

You can define it as shown in lib/bundler-custom-source.rb
