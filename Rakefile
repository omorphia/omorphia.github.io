##
# A couple of rake tasks that'll optimize JPG, PNG, JavaScripts and Stylesheet files
#
namespace :optimize do

  ##
  # Gem Requirement:
  #  YUI-Compressor - Bundled in Gemfile
  #
  desc 'Compress all stylesheet files'
  task :stylesheets do
    require 'yui/compressor'
    compressor = YUI::CssCompressor.new

    Dir['output/**/*.css'].each do |stylesheet|
      puts "Compressing Stylesheet: #{stylesheet}"
      css = File.read(stylesheet)
      File.open(stylesheet, 'w') do |file|
        file.write(compressor.compress(css))
      end
    end
  end

  ##
  # Package Requirement:
  #  jpegoptim
  # Install OSX:
  #  brew install jpegoptim
  # Install Ubuntu:
  #  [apt-get | aptitude] install jpegoptim
  #
  desc 'Optimize JPG images in output/images directory using jpegoptim'
  task :jpg do
    puts `find output/assets/images -name '*.jpg' -exec jpegoptim {} \\;`
    puts `find output/assets/images -name '*.jpeg' -exec jpegoptim {} \\;`
  end

  ##
  # Package Requirement:
  #  optipng
  # Install OSX:
  #  brew install optipng
  # Install Ubuntu:
  #  [apt-get | aptitude] install optipng
  #
  desc 'Optimize PNG images in output/images directory using optipng'
  task :png do
    puts `find output/assets/images -name '*.png' -exec optipng {} \\;`
  end

  ##
  # Convenient task for performing all image optimizations
  #
  desc 'Optimize all JPG, PNG files in the output directory'
  task images: [:jpg, :png]

  ##
  # Convenient task for performing all optimization techniques at once
  #
  desc 'Optimize all JPG, PNG, Stylesheet files in the output directory'
  task all: [:images, :stylesheets]
end

