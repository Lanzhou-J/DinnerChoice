require_relative 'lib/DinnerChoice/version'

Gem::Specification.new do |spec|
  spec.name          = "DinnerChoice"
  spec.version       = DinnerChoice::VERSION
  spec.authors       = ["Lanzhou Jiang"]
  spec.email         = ["lzjiang99@gmail.com"]
  spec.licenses      = ['MIT']
  spec.summary       = "dinner choice app gem"
  spec.description   = "make dinner/lunch decisions easily"
  spec.homepage      = "https://github.com/Lanzhou-J/DinnerChoice/blob/master/lib/DinnerChoice.rb"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  # spec.metadata["allowed_push_host"] = 'http://mygemserver.com'

  # spec.metadata["homepage_uri"] = spec.homepage
  # spec.metadata["source_code_uri"] = "TODO: Put your gem's public repo URL here."
  # spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.add_dependency "colorize", "~> 0.8.1"
  spec.add_dependency "artii", "~> 2.1.2"
end
