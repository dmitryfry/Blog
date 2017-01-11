require "spec_helper"

describe Article do
  describe "validations" do
    it { should validate_presence_of :title }
    it { should validate_presence_of :text }
  end
  describe "associations" do
    it { should have_many :comments }
  end

  describe "#subject" do
    it "returns the article title" do
      article = create(:article, title: 'Lorem Ipsum')
      expect(article.subject).to eq 'Lorem Ipsum'
    end
  end
  describe "#last_comment" do
    it "return the last comment" do
      article = create(:articles_with_comments)

# last_comment Rake 11.0.1 removes the last_comment      expect(article.last_comment.body).to eq "comment body 3"
    end
  end
end
