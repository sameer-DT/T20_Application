def validate_email(email)
    email_regex=/\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    if email.match(email_regex)
        puts "Your Email Address is Valid"
    else
        puts "Your Email Address is INVALID"
    end
end
p "Enter Your Email: "
email=gets.chomp
validate_email(email)

