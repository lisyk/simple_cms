class Page < ActiveRecord::Base
    has_many :sections
    belongs_to :subject
    has_and_belongs_to_many :editors, :class_name => "AdminUser" 
    # above statement we use to change :admin_users to : editors from below statement 
#    has_and_belongs_to_many :admin_users
    
    scope :visible, lambda { where(:visible => true) }
    scope :invisible, lambda { where(:visible => false) }
    scope :sorted, lambda { order("pages.position ASC") }
    scope :newest_first, lambda { order("pages.created_at DESC")}
end
