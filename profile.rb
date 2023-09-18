class Profile
  attr_reader :nickname, :name, :date_of_birth, :image_file, :hobbies, :friends, :friends_objects
  def initialize(nickname, name, date_of_birth, image_file, hobbies, friends)
    @nickname = nickname
    @name = name
    @date_of_birth = date_of_birth
    @image_file = image_file
    @hobbies = hobbies.gsub(',', ', ')
    @friends = friends
    @friends_objects =[]
  end

  def add_friends
    if @friends!= nil
      friends_array = @friends.split(',')
      p "Here comes friends:"
      p friends_array
      friends_array.each do |friend|
        friend_profile = ProfileRepository.find_profile(friend)
        @friends_objects << friend_profile
      end
      p @friends_objects
    end

  end
end
