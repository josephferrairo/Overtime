require 'rails_helper'

RSpec.describe Post, type: :model do
  describe "Creation" do
    before do
      @post = Post.create(date: Date.today, rationale: "Anything")
    end

    it "can be created" do
      expect(@post).to be_valid
    end

    it "cannot be created without a date and rationale" do
      @post.date = nil
      @post.rationale = nil
      expect(@post).to_not be_valid
    end
  end

  describe "creation" do
    it "has a new form that can be reached" do
      visit new_posts_path
    end
  end
end
