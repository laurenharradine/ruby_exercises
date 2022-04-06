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

  class Account
    attr_reader :name
    attr_reader :balance
    
    def initialize(name, balance=100)
      @name = name
      @balance = balance
    end
  
    def display_balance(pin_number)
      if pin_number == pin
        puts "Balance: $#{@balance}."
      else
        puts pin_error
      end
    end
  
    def withdraw(pin_number, amount)
      if pin_number == pin
        @balance -= amount
        puts "Withdrew #{amount}. New balance: $#{@balance}."
      else
        puts pin_error
      end
    end
  
    private
    def pin
      @pin = 1234
    end
  
    def pin_error
      "Access denied: incorrect PIN."
    end
  end
  
  checking_account = Account.new("LozMoney", 100000)
  checking_account.display_balance(1234)
  checking_account.display_balance(1253)
  checking_account.withdraw(14213, 500)
  checking_account.withdraw(1234, 500)