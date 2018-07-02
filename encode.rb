def roman_encode(msg)
    count = 0
    msg.each_char do |c|
        msg[count] = (c.ord + 5).chr
        count += 1
    end
    msg
end