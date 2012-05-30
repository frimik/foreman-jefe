# Ensure we require the local version and not one we might have installed already
require File.join([File.dirname(__FILE__),'lib','jefe_version.rb'])
spec = Gem::Specification.new do |s| 
  s.name = 'jefe'
  s.version = Jefe::VERSION
  s.author = 'Mikael Fridh'
  s.email = 'mfridh@marinsoftware.com'
  s.homepage = 'http://repo.marinsw.net'
  s.platform = Gem::Platform::RUBY
  s.summary = 'Umm, trying to do some DNS and DHCP stuff'
# Add your other files here if you make them
  s.files = %w(
bin/jefe
lib/jefe_version.rb
  )
  s.require_paths << 'lib'
  s.has_rdoc = true
  s.extra_rdoc_files = ['README.rdoc','jefe.rdoc']
  s.rdoc_options << '--title' << 'jefe' << '--main' << 'README.rdoc' << '-ri'
  s.bindir = 'bin'
  s.executables << 'jefe'
  s.add_development_dependency('rake')
  s.add_development_dependency('rdoc')
  s.add_runtime_dependency('gli')
  s.add_runtime_dependency('rest-client')
  s.add_runtime_dependency('json')
end
