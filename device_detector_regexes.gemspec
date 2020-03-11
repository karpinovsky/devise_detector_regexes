require_relative 'lib/device_detector_regexes/version'

Gem::Specification.new do |spec|
  spec.name          = "device_detector_regexes"
  spec.version       = DeviceDetectorRegexes::VERSION
  spec.authors       = ["Kirill Karpinovsky"]
  spec.email         = ["karpinovsky@gmail.com"]

  spec.summary       = %q{device_detector regexes extender}
  spec.description   = %q{DeviceDetectorRegexes is an extension for device_detector gem that makes it easy to add new regular expressions}
  spec.homepage      = "https://github.com/karpinovsky/device_detector_regexes"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["bug_tracker_uri"] = "https://github.com/karpinovsky/device_detector_regexes/issues"
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = "https://github.com/karpinovsky/device_detector_regexes/blob/master/CHANGELOG.md"

  spec.extra_rdoc_files = Dir["README.md", "CHANGELOG.md", "LICENSE.txt"]

  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "device_detector", "~> 1.0.3"
  spec.add_dependency "dry-configurable", "~> 0.11.2"
  spec.add_dependency "rake", "~> 12.0"
end
