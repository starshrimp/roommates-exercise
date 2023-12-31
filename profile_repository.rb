require 'csv'
require './profile'

class ProfileRepository

  def self.all_profiles
    CSV.table('profiles.csv').map do |row|
      Profile.new(
        row[:nickname],
        row[:name],
        row[:date_of_birth],
        row[:image_file],
        row[:hobbies],
        row[:friends]
      )
    end
  end

  def self.find_profile(nickname)
    all_profiles.find do |profile|
      profile.nickname == nickname
    end
  end

  # def self.add_friend(nickname, friend)

  #   profile = find_profile(nickname)
  #   profile.friends << friend
  # end


  #ask which makes more sense: add_friend in profile or in profile_repository?

end
