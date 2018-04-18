def friend(friends)
  friends.select { |x| x.length == 4 }
end