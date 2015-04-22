collection @users

 attributes :username,:email

glue :customers_profile do


 attributes :fname, :lname
   node do |u|
     { :full_name => u.fname + " " + u.lname }
   end

end


