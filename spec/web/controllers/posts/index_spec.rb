RSpec.describe Web::Controllers::Posts::Index, type: :action do
  let(:post) { Post.new(id: 1, title: 'Hello World', body: 'World') }

  let(:repository) { double('repository', all: [post]) }

  let(:action) { described_class.new(repository: repository) }

  let(:params) { Hash[] }

  it 'is successful' do
    response = action.call(params)

    expect(response[0]).to eq(200)

    expect(action.posts).to eq([post])

    expect(action.exposures[:posts]).to eq([post])
  end
end
