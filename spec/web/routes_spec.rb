RSpec.describe Web.routes do
  it 'generates "/"' do
    actual = described_class.path(:root)

    expect(actual).to eq('/')
  end

  it 'generates "/posts"' do
    actual = described_class.path(:posts)

    expect(actual).to eq('/posts')
  end

  it 'generates "http://0.0.0.0:2300/posts"' do
    actual = described_class.url(:posts)

    expect(actual).to eq('http://0.0.0.0:2300/posts')
  end

  it 'generates "/posts/23"' do
    actual = described_class.path(:post, id: 23)

    expect(actual).to eq('/posts/23')
  end

  it 'generates "/posts/23/edit"' do
    actual = described_class.path(:edit_post, id: 23)

    expect(actual).to eq('/posts/23/edit')
  end

  it 'generates "/posts/new"' do
    actual = described_class.path(:new_post)

    expect(actual).to eq('/posts/new')
  end
end
