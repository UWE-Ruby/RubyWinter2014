require_relative 'options'
module CookbookReader 
  class Parser
    def initialize(argv)
      @options = Options.new(argv)
      @top_list = []
    end
    
    def run
      finder = Finder.from_file(@options.dictionary)
      @options.words_to_find.each do |word|
         anagrams = finder.lookup(word)
         if anagrams
           puts "Anagrams of #{word}: #{anagrams.join(', ')}"
         else
           puts "No anagrams of #{word} in #{@options.dictionary}"
         end
      end
    end

    def parse
      @metadata_list = Array.new
      Dir.glob("#{@options.path_to_search}/**/metadata.rb") do |filename|
        @metadata_list.push read_file filename


      end
    end

    def display_data
      #pp @top_list

      @top_list.each do |element|
        puts  "Cookbook: #{element['name']}\n"
        puts "  Dependancies:"
        element['depends'].each do |name, version|
          puts "    #{name}, #{version}\n"
        end
        puts "\n"
      end
    end

  private
    def read_file(filename)
      @hash = {}

      @depends_list = {}
      File.open(filename) do |fp|
        fp.each do |line|
          key, value = line.chomp.split(" ")
          key.strip!
          value.strip!
          key = key.chomp('"').reverse.chomp('"').reverse
          value = value.chomp('"').reverse.chomp('"').reverse

          if key =~ /depends/
            @hash[key] = add_dependencies(line)
          else
            @hash[key] = value
          end
        end
      end
      @top_list.push @hash

    end

    def add_dependencies(line)
      line.slice! "depends "
      k, v = line.chomp.split(",")
      v = "none" if v.nil?
      k.strip!
      v.strip!
      v = v.chomp('"').reverse.chomp('"').reverse
      v = v.chomp('"').reverse.chomp('"').reverse
      k = k.chomp('"').reverse.chomp('"').reverse
      k.strip!
      v.strip!
      @depends_list[k] = v
      @depends_list
    end
  end
end
