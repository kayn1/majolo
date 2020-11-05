require_relative 'lib/majolo/version'

Gem::Specification.new do |spec|
  spec.name          = 'majolo'
  spec.version       = Majolo::VERSION
  spec.authors       = ['Daniel']
  spec.email         = ['daniel.wojnar13@gmail.com']

  spec.summary       = 'Majolo is a backgoround processing system.'
  spec.description   = 'TBC'
  spec.homepage      = 'https://github.com/kayn1/majolo'
  spec.license       = 'MIT'
  spec.required_ruby_version = Gem::Requirement.new('>= 2.4.0')

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/kayn1/majolo'
  spec.metadata['changelog_uri'] = 'https://github.com/kayn1/majolo/CHANGELOG.md'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']
end
