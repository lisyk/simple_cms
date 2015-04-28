class DemoController < ApplicationController

    layout 'application'

    def index
    end

    def hello
        @id = params['id']
        @page = params[:page]
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

    def text_helpers

    end

    def escape_output
    end

    def logging
      logger.debug("This is debug.")
      logger.info("This is info.")
      logger.warn("This is warn.")
      logger.error("This is error.")
      logger.fatal("This is fatal.")
      render(:text => 'Logged!')
    end
end
