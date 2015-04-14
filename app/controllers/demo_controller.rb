class DemoController < ApplicationController
    def index
        render ('hello')
    end
    
    def hello
    end
    
    def other_hello
        #whole command for redirect
        #redirect_to(:controller => 'demo', :action => 'hello')
        #short command for redirect
        redirect_to('hello')
    end
    
    def lynda
        #external link for redirection
        redirect_to("http://lynda.com")
    end
end
