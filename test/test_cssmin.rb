# frozen_string_literal: true

require "test_helper"

class TestCssmin < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Cssmin::VERSION
  end

  def test_it_minifies_a_css_file
    test_file = File.expand_path("../fixture.css", __FILE__)
    assert_equal "body{color:#313373}", ::Cssmin.minify(test_file)
  end
end
