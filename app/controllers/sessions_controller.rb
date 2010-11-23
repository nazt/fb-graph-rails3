class SessionsController < ApplicationController
  def create
    @rack_auth = request.env['rack.auth']
    @token = @rack_auth['credentials']['token']
    client = FBGraph::Client.new(:client_id => '125770127482918',:secret_id =>'e7f29e986d7570848c69257f3c03cb7e', :token =>@token)
    #client.inspect
    user = client.selection.me.info!
    client.selection.user(user[:id]).feed.publish!(:message => 'test message []FBGraph Rails[]' , :name => 'test name')
    render :text => client.selection.me.info!
    
    #render :text => FbGraph:User.me('125770127482918|a74455a00bb7134df96a7e84-896050346|JNDdXhCkwprKtO5k1p7rW0yVvtY').inspect
    #render :text => FbGraph.inspe
  end
end
