require "cumsort/version"
require "yaml"

module Cumsort
  # god theres so much fuckign cum...
  # we need... to sort the cum...

  class CumDumpster
    # lets load our cumtionary
    @list_of_known_cums = YAML.load_file('lib/cumsort/cum.yml')['cum_words']

    # returns true if cum exists
    def self.check_for_cum(potential_cum_words)
      potential_cum_words.split.any? do |cum_word| 
        @list_of_known_cums.include?(cum_word)
      end
    end

    def self.remove_cum(potential_cum_words, replacement: 'nice')
      # lets uncum the situation
      uncummed_array = []
      potential_cum_words.split.each do |cum_word|
        
        if @list_of_known_cums.include? cum_word
          cum_word = replacement
        end

        uncummed_array << cum_word

      end

      uncummed_array.join(' ')

    end
  end
end
