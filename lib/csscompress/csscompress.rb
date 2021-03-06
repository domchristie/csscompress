require "execjs"

MINIFIER_PATH = File.expand_path("../../csso/csso.js", __FILE__)
MINIFIER_FUNCTION = "csso.minify"

module Csscompress
  class Error < StandardError; end

  def self.minify(filename)
    context.call(MINIFIER_FUNCTION, File.read(filename))["css"]
  end

  def self.context
    @context ||= ExecJS.compile File.read(MINIFIER_PATH)
  end
end
