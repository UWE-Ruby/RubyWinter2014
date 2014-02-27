class PirateTranslator
    attr_accessor :words, :translations

    def initialize
        @translations = Hash.new
        @translations["Hello Friend"] = "Ahoy Matey\n Shiber Me Timbers You Scurvey Dogs!!"
    end

    def say words
        @words = words
    end

    def translate
        if @translations.has_key?(@words)
            @translations[@words]
        end
    end
end

