def roman_encode(msg)
    {msg => msg.tr('A-Za-z', 'F-ZA-Ef-za-e')}
end

def roman_decode(msg)
    {msg => msg.tr('F-ZA-Ef-za-e', 'A-Za-z')}
end