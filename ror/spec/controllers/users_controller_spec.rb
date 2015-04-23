require 'rails_helper'

RSpec.describe UsersController  do
  # other actions should be described here
  
  describe 'GET #show' do
    let!(:user) { FactoryGirl.create(:user, username: 'hisa') }
    before do
      get :show, username: user.username
    end
    it 'finds User by params[:username] and assigns it to @user' do
      expect(assigns[:user]).to eq user
    end   
    it 'renders users/#{@user.username}/show' do
      expect(response).to render_template("users/#{user.username}/show")
    end
  end
end
