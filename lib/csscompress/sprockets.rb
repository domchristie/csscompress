compressor = ->(input) {
  Tempfile.create([input[:name], ".css"]) do |file|
    file << input[:data]
    file.close
    {data: Csscompress.minify(file.path)}
  end
}

begin
  require "sprockets"
rescue LoadError
  # Sprockets not available
end

if defined?(Sprockets)
  Sprockets.register_compressor "text/css", :csscompress, compressor
end
