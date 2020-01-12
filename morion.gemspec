require_relative 'lib/morion/version'

Gem::Specification.new do |spec|
  spec.name          = 'morion'
  spec.version       = Morion::VERSION
  spec.authors       = ['João Vitor Alves']
  spec.email         = ['joao.vitor@redealumni.com']

  spec.homepage    = 'https://github.com/joaovitoras/morion'
  spec.summary     = 'Display all images of a Rails app'
  spec.description = 'Morion allows viewing of all images from a rails application'
  spec.license = 'MIT'
  spec.required_ruby_version = Gem::Requirement.new('>= 2.3.0')

  spec.metadata['homepage_uri'] = spec.homepage

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end

  spec.executables << 'morion'
  spec.require_paths = ['lib']

  spec.add_dependency 'sinatra', '~> 2.0'
  spec.add_dependency 'sinatra-asset-pipeline', '~> 2.2'

  spec.add_development_dependency 'rspec', '~> 3.8'
  spec.add_development_dependency 'rubocop'
end
