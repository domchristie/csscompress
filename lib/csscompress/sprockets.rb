class CsscompressCompressor
  VERSION = 1

  def self.cache_key
    "#{name}:#{Csscompress::VERSION}:#{VERSION}".freeze
  end

  def self.call(input)
    puts "[#{name}] Compressing…"
    Tempfile.create([input[:name], ".css"]) do |file|
      file << input[:data]
      file.close
      {data: Csscompress.minify(file.path)}
    end
  end
end

begin
  require "sprockets"
rescue LoadError
  # Sprockets not available
end

if defined?(Sprockets)
  Sprockets.register_compressor "text/css", :csscompress, CsscompressCompressor
end
