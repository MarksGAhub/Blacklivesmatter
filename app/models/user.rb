class User < ActiveRecord::Base
    # you can also explicitly define enum as:  enum access_level: [:viewer => 0, :user => 1, :admin => 2}
  enum access_level: [:viewer, :user, :admin]

end

    @admin = false
    @attr_reader = true
    @attr_writer = true

    def initialize(name, email, password)
        @name, @email, @password = name, email, password
    end


end
