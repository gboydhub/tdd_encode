def roman_encode(msg)
    shift_spaces = Time.new.day
    [msg[0].tr('A-Za-z', 'F-ZA-Ef-za-e')]
end

def roman_decode(msg)
    shift_spaces = Time.new.day
    [msg[0].tr('F-ZA-Ef-za-e', 'A-Za-z')]
end
#Time.new.day