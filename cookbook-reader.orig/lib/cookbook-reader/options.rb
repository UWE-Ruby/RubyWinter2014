require 'optparse'

module CookbookReader
  class Options

    attr_reader :path_to_search

    def initialize(argv)
      parse(argv)
    end
                 
  private
    
    def parse(argv)
      OptionParser.new do |opts|  
        opts.banner = "Usage:  cookbook-reader --path path ..."

        opts.on("-p", "--path path", String, "Path to search") do |path|
          @path_to_search = path
        end 

        opts.on("-h", "--help", "Show this message") do
          puts opts
          exit
        end

        begin
          argv = ["-h"] if argv.empty?
          opts.parse!(argv)
        rescue OptionParser::ParseError => e
          STDERR.puts e.message, "\n", opts
          exit(-1)
        end
      end    
    end
  end
end
