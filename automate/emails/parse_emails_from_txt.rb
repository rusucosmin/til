def extract_emails_to_array(txt)
  reg = /[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}/i
  txt.scan(reg).uniq
end

input = IO.readlines("db.txt")
output = File.new("mails.txt",  "w+")
result_array = extract_emails_to_array(input.join(" ")).sort
puts result_array.size  #optional
result_array.each{|s| output << s.to_s+"\n" }
