class Computer
    @@users = Hash.new
    
    def initialize(username, password)
      @username = username
      @password = password
      @files = Hash.new
      @@users[username] = password
    end
  
    def create(filename)
      @time = Time.now
      @files[filename] = @time
      puts "New file #{filename} created for user #{@username} at #{@time}."
    end
  
    def Computer.get_users
      @@users
    end
  end
  
  my_computer = Computer.new("lauren", "12345")
  my_computer.create("lozfile.txt")
  other_comp = Computer.new("nigel", "goodpassword")
  other_comp.create("nigelfile.xls")
  
  puts Computer.get_users