def roman_encode(msg)
    shift_start = Time.new.day % 26
    shift_cap = (shift_start + 'A'.ord)
    shift_sm = (shift_start + 'a'.ord)
    [msg[0].tr('A-Za-z', "#{shift_cap.chr}-ZA-#{(shift_cap-1).chr}#{shift_sm.chr}-za-#{(shift_sm-1).chr}")]
end

def roman_decode(msg)
    shift_start = Time.new.day % 26
    shift_cap = (shift_start + 'A'.ord)
    shift_sm = (shift_start + 'a'.ord)
    [msg[0].tr("#{shift_cap.chr}-ZA-#{(shift_cap-1).chr}#{shift_sm.chr}-za-#{(shift_sm-1).chr}", 'A-Za-z')]
end
#Time.new.day