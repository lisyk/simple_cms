class AdminUser < ActiveRecord::Base
#    in the alter_use migration we changed the table name from 'users' to #'admin_users' so here we need to make some changes also
#    ****    self.table name = "admin_users"     ****  - one way
#    otherway is as I did - change this class name from User to AdminUser
#    as well as this file name from user.rb to admin_user.rb
    has_secure_password

    has_and_belongs_to_many :pages
    has_many :section_edits
    has_many :sections, :through => :section_edits

    EMAIL_REGEX = /\A[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}\Z/i
    validates_presence_of :first_name
    validates_length_of :first_name, maximum: 25
    validates_presence_of :last_name
    validates_length_of :last_name, maximum: 50
    validates_presence_of :username
    validates_length_of :username, within: 8..25
    validates_uniqueness_of :username
    validates_presence_of :email
    validates_length_of :email, maximum: 100
    validates_format_of :email, with: EMAIL_REGEX
    validates_confirmation_of :email
    
    scope :sorted, lambda { order("last_name ASC, first_name ASC") }
    
    def name
        "#{first_name} #{last_name}"
        #or first_name + ' ' + last_name
        #or [first_name, last_name].join(' ')
    end
end

