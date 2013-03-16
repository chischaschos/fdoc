class MembersController < ApplicationController

  def add
    render :ok, json: { email: params[:email] }
  end

end
