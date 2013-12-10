class HelloController < ApplicationController

  def hi

    respond_to do |format|
      format.html 
      format.json {render json: "Hello world!"}
      format.xml {redirect_to '/404'}
    end
  end

end
