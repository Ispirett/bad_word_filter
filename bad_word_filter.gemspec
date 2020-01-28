require_relative 'lib/bad_word_filter/version'

Gem::Specification.new do |spec|
  spec.name          = "bad_word_filter"
  spec.version       = BadWordFilter::VERSION
  spec.authors       = ["Ispire"]
  spec.email         = ["ispirett@gmail.com"]

  spec.summary       = %q{Detect and censor bad words, swear words and profanity in a given text.}
  spec.description   = %q{Detect and censor bad words, swear words and profanity in a given text.}
  spec.homepage      = "https://github.com/Ispirett/bad_word_filter"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "https://rubygems.org/"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/Ispirett/bad_word_filter"
  spec.metadata["changelog_uri"] = "https://github.com/Ispirett/bad_word_filter/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.add_development_dependency "rspec","~> 3.0"
  spec.add_runtime_dependency 'rest-client'
end
