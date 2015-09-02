class PigLatin

  def self.translate phrase
    new_phrase =''
    case phrase.start_with?('a','e','i','o','u')
    when true then new_phrase = "#{phrase}ay"
    else new_phrase = phrase[1..phrase.length].concat phrase[0].concat "ay"
    end
  end

end