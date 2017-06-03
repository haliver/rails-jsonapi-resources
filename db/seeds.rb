if User.count == 0
  10.times do |i|
    User.create(name: "name#{i}", email: "email#{i}@dummy.com", password: "password#{i}")
  end
end

if Review.count == 0
  User.all.each do |u|
    10.times do |i|
      Review.create(user_id: u.id, comment: "#{u.name}は、#{i}語りき")
    end
  end
end
