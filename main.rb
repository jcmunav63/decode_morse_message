class MorseCodeDecoder
  MORSE_CODE = {
    '.-' => 'A',
    '-...' => 'B',
    '-.-.' => 'C',
    '-..' => 'D',
    '.' => 'E',
    '..-.' => 'F',
    '--.' => 'G',
    '....' => 'H',
    '..' => 'I',
    '.---' => 'J',
    '-.-' => 'K',
    '.-..' => 'L',
    '--' => 'M',
    '-.' => 'N',
    '---' => 'O',
    '.--.' => 'P',
    '--.-' => 'Q',
    '.-.' => 'R',
    '...' => 'S',
    '-' => 'T',
    '..-' => 'U',
    '...-' => 'V',
    '.--' => 'W',
    '-..-' => 'X',
    '-.--' => 'Y',
    '--..' => 'Z',
    '-----' => '0',
    '.----' => '1',
    '..---' => '2',
    '...--' => '3',
    '....-' => '4',
    '.....' => '5',
    '-....' => '6',
    '--...' => '7',
    '---..' => '8',
    '----.' => '9',
    '.-.-.-' => '.',
    '--..--' => ',',
    '..--..' => '?',
    '-.-.--' => '!',
    '.-...' => '&',
    '---...' => ':',
    '-.-.-.' => ';',
    '.----.' => "'",
    '.-..-.' => '"',
    '-..-.' => '/',
    '-.--.' => '(',
    '-.--.-' => ')',
    '.-.-.' => '+',
    '-....-' => '-',
    '-...-' => '=',
    '.--.-.' => '@',
    ' ' => ' '
  }.freeze

  def self.decode_char(char)
    MORSE_CODE[char]
  end

  def self.decode_word(word)
    word.split.map { |char| decode_char(char) }.join
  end

  def self.decode_message(message)
    words = message.split('   ') # Three spaces indicate a word separation
    decoded_words = words.map { |word| decode_word(word) }
    decoded_words.join(' ')
  end
end

# Example usage:
morse_message = '      .-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...'

decoded_message = MorseCodeDecoder.decode_message(morse_message)
puts decoded_message
# Output: 'A BOX FULL OF RUBIES'
