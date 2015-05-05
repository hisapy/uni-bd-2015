# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).


# Seed users here
[
  {first_name: 'Hisa', last_name: 'Ishibashi', username: 'hisa', age: 32, email: 'hisa@iporaitech.com', github_url: 'https://github.com/hisapy' },
  {first_name: 'Tania', last_name: 'Monges', username: 'tmonges', age: 20, email: 'taniamonges@gmail.com', github_url: 'https://github.com/taniamonges' },
  {first_name: 'Jerson', last_name: 'Paniagua', username: 'pany', age: 20, email: 'diazpany@gmail.com', github_url: 'https://github.com/panypy' },
  {first_name: 'Alex', last_name: 'Jiñes', username: 'ajines', age: 20, email: 'abel.oalex@gmail.com', github_url: 'https://github.com/alexjw' }
].each do | user_attrs |
  begin
    User.create user_attrs
  rescue ActiveRecord::RecordNotUnique => e
    puts e.message
    puts 'Trying to update user'
    u = User.find_by!(username: user_attrs[:username])
    u.update_attributes! user_attrs
    puts "User #{u.username} successfully updated"
  end  
end


