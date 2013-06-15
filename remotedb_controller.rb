require 'active_record'
class RemotedbController < ApplicationController
 def index
 
 begin
 
       current_database = ActiveRecord::Base.connection.current_database
  	
        ActiveRecord::Base.establish_connection("mysql2://root:root@10.90.90.164/mydb1")
	
end

rescue Exception => e

     puts "An error occurred"
     puts "Error code:    #{e.message}"
ensure	

ActiveRecord::Base.establish_connection("mysql2://root:root@localhost/#{current_database}")

  end
  
end

 
