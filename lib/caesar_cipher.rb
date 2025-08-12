def is_alpha?(char)
  char.match?(/[A-Za-z]/)
end

def caesar_cipher(message, shift)  
  output=""
  message.each_char do |char|
    puts char
    if is_alpha?(char)
      val=char.ord
      if val>="a".ord
        next_val=(val+shift)%"z".ord
      else
        next_val=(val+shift)%"Z".ord
      end
      output+=(next_val).chr      
    else
      output+=char
    end
  end  
  puts output
  output
end

