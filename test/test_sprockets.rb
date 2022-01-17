# frozen_string_literal: true

require "test_helper"

class TestSprockets < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil CsscompressCompressor::VERSION
  end

  def test_that_it_has_a_cache_key
    refute_nil CsscompressCompressor.cache_key
  end
end
