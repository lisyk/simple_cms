class AdminUser < ActiveRecord::Base
#    in the alter_use migration we changed the table name from 'users' to #'admin_users' so here we need to make some changes also
#    ****    self.table name = "admin_users"     ****  - one way
#    otherway is as I did - change this class name from User to AdminUser
#    as well as this file name from user.rb to admin_user.rb
    
    has_and_belongs_to_many :pages
    has_many :section_edits
end
