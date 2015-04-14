def random_string(length=16)
	chars = 'abcdefghjkmnpqrstuvwxyzABCDEFGHJKLMNPQRSTUVWXYZ123456789'
	password = ''
	length.times { password << chars[rand(chars.size)] }
 	return password
end

p random_string.inspect
