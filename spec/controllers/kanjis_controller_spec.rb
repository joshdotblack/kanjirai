require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe KanjisController do

  # This should return the minimal set of attributes required to create a valid
  # Kanji. As you add validations to Kanji, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "imageUrl" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # KanjisController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all kanjis as @kanjis" do
      kanji = Kanji.create! valid_attributes
      get :index, {}, valid_session
      assigns(:kanjis).should eq([kanji])
    end
  end

  describe "GET show" do
    it "assigns the requested kanji as @kanji" do
      kanji = Kanji.create! valid_attributes
      get :show, {:id => kanji.to_param}, valid_session
      assigns(:kanji).should eq(kanji)
    end
  end

  describe "GET new" do
    it "assigns a new kanji as @kanji" do
      get :new, {}, valid_session
      assigns(:kanji).should be_a_new(Kanji)
    end
  end

  describe "GET edit" do
    it "assigns the requested kanji as @kanji" do
      kanji = Kanji.create! valid_attributes
      get :edit, {:id => kanji.to_param}, valid_session
      assigns(:kanji).should eq(kanji)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Kanji" do
        expect {
          post :create, {:kanji => valid_attributes}, valid_session
        }.to change(Kanji, :count).by(1)
      end

      it "assigns a newly created kanji as @kanji" do
        post :create, {:kanji => valid_attributes}, valid_session
        assigns(:kanji).should be_a(Kanji)
        assigns(:kanji).should be_persisted
      end

      it "redirects to the created kanji" do
        post :create, {:kanji => valid_attributes}, valid_session
        response.should redirect_to(Kanji.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved kanji as @kanji" do
        # Trigger the behavior that occurs when invalid params are submitted
        Kanji.any_instance.stub(:save).and_return(false)
        post :create, {:kanji => { "imageUrl" => "invalid value" }}, valid_session
        assigns(:kanji).should be_a_new(Kanji)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Kanji.any_instance.stub(:save).and_return(false)
        post :create, {:kanji => { "imageUrl" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested kanji" do
        kanji = Kanji.create! valid_attributes
        # Assuming there are no other kanjis in the database, this
        # specifies that the Kanji created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Kanji.any_instance.should_receive(:update_attributes).with({ "imageUrl" => "MyString" })
        put :update, {:id => kanji.to_param, :kanji => { "imageUrl" => "MyString" }}, valid_session
      end

      it "assigns the requested kanji as @kanji" do
        kanji = Kanji.create! valid_attributes
        put :update, {:id => kanji.to_param, :kanji => valid_attributes}, valid_session
        assigns(:kanji).should eq(kanji)
      end

      it "redirects to the kanji" do
        kanji = Kanji.create! valid_attributes
        put :update, {:id => kanji.to_param, :kanji => valid_attributes}, valid_session
        response.should redirect_to(kanji)
      end
    end

    describe "with invalid params" do
      it "assigns the kanji as @kanji" do
        kanji = Kanji.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Kanji.any_instance.stub(:save).and_return(false)
        put :update, {:id => kanji.to_param, :kanji => { "imageUrl" => "invalid value" }}, valid_session
        assigns(:kanji).should eq(kanji)
      end

      it "re-renders the 'edit' template" do
        kanji = Kanji.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Kanji.any_instance.stub(:save).and_return(false)
        put :update, {:id => kanji.to_param, :kanji => { "imageUrl" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested kanji" do
      kanji = Kanji.create! valid_attributes
      expect {
        delete :destroy, {:id => kanji.to_param}, valid_session
      }.to change(Kanji, :count).by(-1)
    end

    it "redirects to the kanjis list" do
      kanji = Kanji.create! valid_attributes
      delete :destroy, {:id => kanji.to_param}, valid_session
      response.should redirect_to(kanjis_url)
    end
  end

end
