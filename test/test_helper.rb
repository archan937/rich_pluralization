require "rubygems"
require "test/unit"
require "active_support"
require "shoulda"

require "csv"

require File.join(File.dirname(__FILE__), "..", "lib", "rich_pluralization")
include Rich::Pluralization