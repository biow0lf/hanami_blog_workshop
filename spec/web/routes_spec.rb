RSpec.describe Web.routes do
  it 'generates "/posts"' do
    actual = described_class.path(:post)

    expect(actual).to eq '/posts'
  end

  it 'generates "/books/23"' do
    actual = described_class.path(:book, id: 23)
    expect(actual).to eq '/books/23'
  end
end
