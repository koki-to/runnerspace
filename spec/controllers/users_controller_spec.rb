require 'rails_helper'

describe UsersController, type: :controller do
  let(:user) { create(:user) }

  before do
    login user
  end
  describe 'GET #edit' do
    it "assigns the requested user to @user" do
      user = create(:user)
      get :edit, params: { id: user }
      expect(assigns(:user)).to eq user
    end

    it "renders the :edit template" do
      user = create(:user)
      get :edit, params: { id: user }
      expect(response).to render_template :edit
    end
  end

  describe 'GET #index' do
    it "renders the :index template" do
      get :index
      expect(response).to render_template :index
    end
  end

  describe 'GET #show' do
    it "assigns the requested user to @user" do
      user = create(:user)
      get :show, params: { id: user }
      expect(assigns(:user)).to eq user
    end

    it "renders the :show template" do
      user = create(:user)
      get :show, params: { id: user }
      expect(response).to render_template :show
    end
  end

  describe 'GET #follows' do
    it "renders the :follows template" do
      user = create(:user)
      get :follows, params: { id: user }
      expect(response).to render_template :follows
    end
  end
end