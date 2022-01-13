# frozen_string_literal: true

require "test_helper"

class TestCsscompress < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Csscompress::VERSION
  end

  def test_it_minifies_a_css_file
    test_file = File.expand_path("../fixture.css", __FILE__)
    assert_equal "body{color:#313373}", ::Csscompress.minify(test_file)
  end
end
