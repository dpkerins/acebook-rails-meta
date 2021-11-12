class ApplicationController < ActionController::Base
    helper_method :current_user_session, :current_user

  def display_post_time(time_at_post)
    time_diffrences = Time.now() - time_at_post
    seconds_in_hour = 3600

    # If the post was in the last hour show minutes since it was made
    # If the post was not in the last hour but today show the time but not date
    # If the post was not today then show the date

    if time_diffrences < seconds_in_hour

    

    end
  end

  private
    def current_user_session
      return @current_user_session if defined?(@current_user_session)
      @current_user_session = UserSession.find
    end

    def current_user
      return @current_user if defined?(@current_user)
      @current_user = current_user_session && current_user_session.user
    end
end
