class LoginController < ApplicationController
  def login
    if request.post?
      author = Author.find_by_email(params[:email])

      if author && author.authenticate(params[:password]) #check to make sure that teacher != nil
        session[:author_id] = author.id
        flash[:notice] = "Welcome!" #flash persists after a redirect
        redirect_to surveys_path #probably need to change this later
      else
        flash.now[:notice] = "Please re-enter credentials" #flash.now does not hang out after a redirect
      end
    end
  end

  def logout
    session[:author_id] = nil
    redirect_to login_login_path
  end

  def change_password
    if request.post?
      if session[:author_id]
        author = Author.find_by_id(session[:author_id])
        if author && author.authenticate(params[:old_password]) #check to make sure that author != nil
          Author.update(session[:author_id], :password => params[:new_password])
          redirect_to surveys_path #probably needs to be changed later
        else
          flash.now[:notice] = "Please double check your old password" #flash.now does not hang out after a redirect
        end
      end
    end
  end

  def register
    session[:author_id] = nil
    redirect_to login_register_path
  end
end
