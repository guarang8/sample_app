# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{hoe}
  s.version = "2.10.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.4") if s.respond_to? :required_rubygems_version=
  s.authors = ["Ryan Davis"]
  s.cert_chain = ["-----BEGIN CERTIFICATE-----\nMIIDPjCCAiagAwIBAgIBADANBgkqhkiG9w0BAQUFADBFMRMwEQYDVQQDDApyeWFu\nZC1ydWJ5MRkwFwYKCZImiZPyLGQBGRYJemVuc3BpZGVyMRMwEQYKCZImiZPyLGQB\nGRYDY29tMB4XDTA5MDMwNjE4NTMxNVoXDTEwMDMwNjE4NTMxNVowRTETMBEGA1UE\nAwwKcnlhbmQtcnVieTEZMBcGCgmSJomT8ixkARkWCXplbnNwaWRlcjETMBEGCgmS\nJomT8ixkARkWA2NvbTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBALda\nb9DCgK+627gPJkB6XfjZ1itoOQvpqH1EXScSaba9/S2VF22VYQbXU1xQXL/WzCkx\ntaCPaLmfYIaFcHHCSY4hYDJijRQkLxPeB3xbOfzfLoBDbjvx5JxgJxUjmGa7xhcT\noOvjtt5P8+GSK9zLzxQP0gVLS/D0FmoE44XuDr3iQkVS2ujU5zZL84mMNqNB1znh\nGiadM9GHRaDiaxuX0cIUBj19T01mVE2iymf9I6bEsiayK/n6QujtyCbTWsAS9Rqt\nqhtV7HJxNKuPj/JFH0D2cswvzznE/a5FOYO68g+YCuFi5L8wZuuM8zzdwjrWHqSV\ngBEfoTEGr7Zii72cx+sCAwEAAaM5MDcwCQYDVR0TBAIwADALBgNVHQ8EBAMCBLAw\nHQYDVR0OBBYEFEfFe9md/r/tj/Wmwpy+MI8d9k/hMA0GCSqGSIb3DQEBBQUAA4IB\nAQAY59gYvDxqSqgC92nAP9P8dnGgfZgLxP237xS6XxFGJSghdz/nI6pusfCWKM8m\nvzjjH2wUMSSf3tNudQ3rCGLf2epkcU13/rguI88wO6MrE0wi4ZqLQX+eZQFskJb/\nw6x9W1ur8eR01s397LSMexySDBrJOh34cm2AlfKr/jokKCTwcM0OvVZnAutaovC0\nl1SVZ0ecg88bsWHA0Yhh7NFxK1utWoIhtB6AFC/+trM0FQEB/jZkIS8SaNzn96Rl\nn0sZEf77FLf5peR8TP/PtmIg7Cyqz23sLM4mCOoTGIy5OcZ8TdyiyINUHtb5ej/T\nFBHgymkyj/AOSqKRIpXPhjC6\n-----END CERTIFICATE-----\n"]
  s.date = %q{2011-06-30}
  s.default_executable = %q{sow}
  s.description = %q{Hoe is a rake/rubygems helper for project Rakefiles. It helps you
manage and maintain, and release your project and includes a dynamic
plug-in system allowing for easy extensibility. Hoe ships with
plug-ins for all your usual project tasks including rdoc generation,
testing, packaging, and deployment.

See class rdoc for help. Hint: `ri Hoe` or any of the plugins listed
below.

For extra goodness, see: http://seattlerb.rubyforge.org/hoe/Hoe.pdf}
  s.email = ["ryand-ruby@zenspider.com"]
  s.executables = ["sow"]
  s.files = ["test/test_hoe.rb", "test/test_hoe_gemcutter.rb", "test/test_hoe_test.rb", "bin/sow"]
  s.homepage = %q{https://github.com/seattlerb/hoe}
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{seattlerb}
  s.rubygems_version = %q{1.6.2}
  s.summary = %q{Hoe is a rake/rubygems helper for project Rakefiles}
  s.test_files = ["test/test_hoe.rb", "test/test_hoe_gemcutter.rb", "test/test_hoe_test.rb"]

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rake>, ["~> 0.8"])
      s.add_development_dependency(%q<minitest>, [">= 2.3.1"])
    else
      s.add_dependency(%q<rake>, ["~> 0.8"])
      s.add_dependency(%q<minitest>, [">= 2.3.1"])
    end
  else
    s.add_dependency(%q<rake>, ["~> 0.8"])
    s.add_dependency(%q<minitest>, [">= 2.3.1"])
  end
end
