def is_alpha?(char)
  char.match?(/[A-Za-z]/)
end

def caesar_cipher(message, shift)  
  output=""
  message.each_char do |char|
    if is_alpha?(char)
      val=char.ord
      if val>="a".ord
        next_val=((val+shift-"a".ord)%26)+"a".ord
        puts next_val
      else
        next_val=((val+shift-"A".ord)%26)+"A".ord
      end
      output+=(next_val).chr     
    else
      output+=char
    end
  end  
  output
end

