class PigLatinizer

    def piglatinize(user_text)
        words = user_text.split(" ")
        latin_words = words.map { |word| latinize_word(word)}
        latin_words.join(" ")
    end
    

    def latinize_word(word)
        return word+"way" if "aeiouAEIOU".include?(word[0])
        to_move = ""
        word.each_char do |char, i|
            break if "aeiou".include?(char)
            to_move += char
        end
        word.slice(to_move.length..-1)+to_move+"ay"
    end

end