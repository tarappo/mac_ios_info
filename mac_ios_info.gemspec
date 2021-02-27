require_relative 'lib/mac_ios_info/version'

Gem::Specification.new do |spec|
  spec.name          = "mac_ios_info"
  spec.version       = MacIosInfo::VERSION
  spec.authors       = ["tarappo"]
  spec.email         = ["tarappo@gmail.com"]

  spec.summary       = %q{macOS, iOS Information}
  spec.homepage      = "https://github.com/tarappo/mac_ios_info"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.5.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/tarappo/mac_ios_info"
  spec.metadata["changelog_uri"] = "https://github.com/tarappo/mac_ios_info/releases"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
