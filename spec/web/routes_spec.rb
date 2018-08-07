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

  it 'recognizes "PATCH /posts/23"' do
    env = Rack::MockRequest.env_for('/posts/23', method: :patch)

    route = described_class.recognize(env)

    expect(route).to be_routable

    expect(route.path).to eq('/posts/23')

    expect(route.verb).to eq('PATCH')

    expect(route.params).to eq(id: '23')

    expect(route.action).to eq('web_controllers/posts#update')
  end
end
