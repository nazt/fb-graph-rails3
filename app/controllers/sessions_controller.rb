class SessionsController < ApplicationController
  def create
    @rack_auth = request.env['rack.auth']
    render :text => @rack_auth.inspect
    #render :text => FbGraph:User.me('125770127482918|a74455a00bb7134df96a7e84-896050346|JNDdXhCkwprKtO5k1p7rW0yVvtY').inspect
    #render :text => FbGraph.inspe
  end
end
