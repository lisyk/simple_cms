class Page < ActiveRecord::Base
    
    belongs_to :subject
    has_and_belongs_to_many :editors, :class_name => "AdminUser" 
    # above statement we use to change :admin_users to : editors from below statement 
#    has_and_belongs_to_many :admin_users
    
end
