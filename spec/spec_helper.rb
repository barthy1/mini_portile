begin
  require "isolate/now"
rescue LoadError
  abort "This project requires Isolate to manage it's dependencies. Please `gem install isolate` and try again. Thank you."
end

require "rspec/core"
require "support/temporary_directory"
require "support/download_helper"

RSpec.configure do |config|
  config.include Support::TemporaryDirectory
  config.include Support::DownloadHelper
end
