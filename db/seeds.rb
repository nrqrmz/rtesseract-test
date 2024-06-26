# install Tesseract OCR
# sudo apt-get install tesseract-ocr # ubunto
# brew install tesseract # macOS

require 'rtesseract'

ticket_1_path = File.join(Dir.pwd, 'app', 'assets', 'images', 'ticket_1.jpg')
ticket_1 = RTesseract.new(ticket_1_path)

ticket_1_text = ticket_1.to_s # This converts the recognized text to a string

puts ticket_1_text # Prints the extracted text to your console
