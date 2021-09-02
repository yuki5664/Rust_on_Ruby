require 'fiddle/import'

module Scraper
  module FFI
    extend Fiddle::Importer
    dlload File.expand_path('release/scraper.dll', __dir__)
    extern 'unsigned int scraper(unsigned int n)'
    extern 'void get(const char* url)' 
  end
end