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
  '----.' => '9'
}

def decode_char(morse_char)
  MORSE_CODE[morse_char] || ''
end

# puts decode_char(".-") => A

def decode_word(morse_word)
  morse_code_to_words = morse_word.split(' ')
  word = ''
  morse_code_to_words.each do |i|
    word += decode_char(i)
  end
  word
end

# puts decode_word("-- -.--") => MY

def decode_message(morse_message)
  morse_words = morse_message.split('   ')
  decoded_words = morse_words.map { |word| decode_word(word) }
  decoded_words.join(' ')
end

# puts decode_message(".-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...")
# output: A BOX FULL OF RUBIES