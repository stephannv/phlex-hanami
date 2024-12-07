# frozen_string_literal: true

require_relative "lib/phlex/hanami/version"

Gem::Specification.new do |spec|
  spec.name = "phlex-hanami"
  spec.version = Phlex::Hanami::VERSION
  spec.authors = ["stephann"]
  spec.email = ["3025661+stephannv@users.noreply.github.com"]

  spec.summary = "A Phlex adapter for Hanami"
  spec.description = "An object-oriented alternative view layer for Hanami."
  spec.homepage = "https://github.com/stephannv/phlex-hanami"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 3.3.1"

  # spec.metadata["allowed_push_host"] = "TODO: Set to your gem server 'https://example.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  # spec.metadata["source_code_uri"] = "TODO: Put your gem's public repo URL here."
  # spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  gemspec = File.basename(__FILE__)
  spec.files = IO.popen(%w[git ls-files -z], chdir: __dir__, err: IO::NULL) do |ls|
    ls.readlines("\x0", chomp: true).reject do |f|
      (f == gemspec) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git .github appveyor Gemfile])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  spec.add_dependency "hanami", ">= 2.2.0"
  spec.add_dependency "phlex", ">= 2.0.0.rc1"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
