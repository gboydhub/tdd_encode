def roman_encode(msg)
    shift_start = Time.new.day % 26
    shift_cap = (shift_start + 'A'.ord)
    shift_sm = (shift_start + 'a'.ord)

    new_arr = []
    msg.each do |val|
        new_arr << val.tr('A-Za-z', "#{shift_cap.chr}-ZA-#{(shift_cap-1).chr}#{shift_sm.chr}-za-#{(shift_sm-1).chr}")
    end
    new_arr
end

def roman_decode(msg)
    shift_start = Time.new.day % 26
    shift_cap = (shift_start + 'A'.ord)
    shift_sm = (shift_start + 'a'.ord)

    new_arr = []
    msg.each do |val|
        new_arr << val.tr("#{shift_cap.chr}-ZA-#{(shift_cap-1).chr}#{shift_sm.chr}-za-#{(shift_sm-1).chr}", 'A-Za-z')
    end
    new_arr
end
#Time.new.day