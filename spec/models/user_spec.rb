require 'rails_helper'

describe User do

# include TestFactories

  describe "#favorited(post)" do

    before do
      @valid_post = create(:post, user: @user)
      @second_valid_post = create(:post, user: @user)     
      @non_favorited = create(:post, user: @user)
      @user = create(:user)
    end

    it "returns the appropriate favorite if it exists" do
      @favorite = Favorite.create(post: @valid_post, user: @user)
      expect( @user.favorited(@valid_post) ).to eq(@favorite)
    end

    it "returns `nil` if the user has not favorited the post" do
      expect(@user.favorited(@non_favorited)).to eq(nil)
    end

    it "returns `nil` if the user has favorited another post" do
      @favorite = Favorite.create(post: @valid_post, user: @user)
      expect(@user.favorited(@non_favorited)).to eq(nil)
    end
  end
end