object @customer

  attributes :fname,:mobile

node :full_name do |u|
  u.fname + " " + u.lname
end