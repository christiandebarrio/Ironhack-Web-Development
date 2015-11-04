class Login

  @users = {
    :chris => "ok" 
  }

  def self.check_user_password? user, password
      @users[user] == password
  end

end