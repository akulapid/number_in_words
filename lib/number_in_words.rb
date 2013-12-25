require 'yaml'
require 'logger'
require 'number_in_words/core_ext/numeric'

module NumberInWords

  SHORT_SCALE = 'short_scale'
  INDIAN = 'indian'

  @logger = Logger.new STDOUT

  @config = {
      'scales' => {
      }
  }

  def self.log
    @logger
  end

  def self.config
    @config
  end

  def self.load_scale opts = {}
      name = opts.keys.first
      @config['scales'][name] = opts[name]
  end

  def self.load_scale_from_file file
    begin
      load_scale YAML.load_file(file)
    rescue Errno::ENOENT
      NumberInWords.log.error { "Error reading yaml file #{file}" }
    end
  end

  self.load_scale_from_file "#{File.dirname(__FILE__)}/number_in_words/short_scale.yml"
  self.load_scale_from_file "#{File.dirname(__FILE__)}/number_in_words/indian.yml"
end
