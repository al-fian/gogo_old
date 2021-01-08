require 'rails_helper'

RSpec.describe "timelines/_line.html.erb" do
  let(:post) { create(:post) }

  before do
    render "timelines/line", post: post
  end

  subject { Nokogiri::HTML(rendered) }

  it "can be rendered" do
    binding.pry
  end
end