compressor = ->(input) {
  Tempfile.create([input[:name], ".css"]) do |file|
    file << input[:data]
    file.close
    {data: Cssmin.minify(file.path)}
  end
}

begin
  require "sprockets"
rescue LoadError
  # Sprockets not available
end

if defined?(Sprockets)
  Sprockets.register_compressor "text/css", :cssmin, compressor
end
