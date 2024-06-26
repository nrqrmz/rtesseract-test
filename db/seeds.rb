# install Tesseract OCR
# sudo apt-get install tesseract-ocr # ubuntu
# brew install tesseract # macOS


tickets = %w[ticket_1.jpg ticket_2.jpg ticket_3.jpg ticket_3.jpg ticket_4.jpg]

tickets.each do |ticket|
  puts ticket.center(50, ' ')
  puts '-' * 50
  puts

  ticket_path = File.join(Dir.pwd, 'app', 'assets', 'images', ticket)
  ocr_ticket = RTesseract.new(ticket_path)

  recognized_text = ocr_ticket.to_s

  puts recognized_text

  puts
  puts '-' * 50
  puts
end
