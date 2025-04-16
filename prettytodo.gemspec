require_relative "lib/prettytodo/version"

Gem::Specification.new do |spec|
  spec.name        = "prettytodo"
  spec.version     = Prettytodo::VERSION
  spec.authors     = [ "Celina Lopez" ]
  spec.email       = [ "marisa.celina.lopez4@gmail.com" ]
  spec.homepage    = "https://github.com/celina-lopez/prettytodo"
  spec.summary     = "A prettier UI for Rails notes"
  spec.description = "A prettier UI for Rails notes"
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the "allowed_push_host"
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/celina-lopez/prettytodo"
  spec.metadata["changelog_uri"] = "https://github.com/celina-lopez/prettytodo/blob/main/CHANGELOG.md"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency "rails", ">= 7.2.2.1"
end
