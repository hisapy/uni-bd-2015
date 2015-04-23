require 'rails_helper'

RSpec.describe UsersController do
  describe 'Routing' do
    it 'routes to home#show' do
      expect(profile_path 'hisa' ).to eq '/hisa'
      expect(get profile_path('hisa')).to route_to('users#show', username: 'hisa')
    end
  end
end
