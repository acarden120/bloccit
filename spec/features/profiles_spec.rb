  require 'rails_helper'

  include Warden::Test::Helpers
  Warden.test_mode!

  # include TestFactories and so the method is being added directly to the spec
  def authenticated_user(options={})
    user_options = {email: "email#{rand}@fake.com", password: 'password'}.merge(options)
    user = User.new(user_options)
    user.skip_confirmation!
    user.save
    user
  end

  def associated_post(options={})
    post_options = {
      title: 'Post title',
      body: 'Post bodies must be pretty long.',
      topic: Topic.create(name: 'Topic name'),
      user: authenticated_user
    }.merge(options)

    Post.create(post_options)
  end

  def comment_without_email
    @comment = @post.comments.build(user: @user, body: "Test comment")
    allow(@comment).to receive(:send_favorite_emails)
    @comment.save
    @comment
  end

  describe "Visiting profiles" do
#	include TestFactories

    before do
      @user = authenticated_user
      @post = associated_post(user: @user)
      comment_without_email
    end

    describe "not signed in" do
      it "shows profile" do
        visit user_path(@user)
        expect(current_path).to eq(user_path(@user))
        expect( page ).to have_content(@user.name)
        expect( page ).to have_content(@post.title)
        expect( page ).to have_content(@comment.body)
      end
    end

    describe "signed in" do
      before do
        login_as(@user, :scope => :user)
      end

      it "shows profile" do
        visit user_path(@user)
        expect(current_path).to eq(user_path(@user))
        expect( page ).to have_content(@user.name)
        expect( page ).to have_content(@post.title)
        expect( page ).to have_content(@comment.body)
      end
    end

 end