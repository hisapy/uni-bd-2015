require 'rails_helper'

RSpec.describe UsersController  do
  # other actions should be described here
  
  describe 'GET #show' do
    let!(:user) { FactoryGirl.create(:user, username: 'hisa') }
    
    it 'finds User by params[:username] and assigns it to @user' do
      get :show, username: user.username
      expect(assigns[:user]).to eq user
    end
    context 'when the view users/#{@user.username}/show exists' do
      it 'renders users/#{@user.username}/show' do
        get :show, username: user.username
        expect(response).to render_template("users/#{user.username}/show")
      end
    end
    context 'when the view users/#{@user.username}/show is missing' do
      it 'sets flash[:alert] and redirects to users_path' do
        #notice that the user exists but its view is missing
        user.update_attributes! username: 'whatever'
        get :show, username: user.username
        expect(flash[:alert]).to eq I18n.t!('errors.user.missing_profile_page')
        expect(response).to redirect_to(users_path)
      end
    end
  end
end
