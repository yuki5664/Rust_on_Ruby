# frozen_string_literal: true

require_relative "scraper/version"
require "scraper/ffi"

module Scraper
  def self.[](n)
    FFI.scraper(n)
  end

  def self.get(url)
    FFI.get(url)
  end
end
