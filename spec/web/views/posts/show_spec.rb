RSpec.describe Web::Views::Posts::Show, type: :view do
  let(:template) { Hanami::View::Template.new('apps/web/templates/posts/show.html.erb') }

  let(:exposures) { Hash[post: double('post', id: 1, title: 'Hello', body: 'World'), params: { id: 1 }, format: :html] }

  let(:view) { described_class.new(template, exposures) }

  let(:rendered) { view.render }

  it 'exposes #format' do
    expect(view.format).to eq(:html)
  end

  it 'show post title' do
    expect(rendered).to include('<h2>1: Hello</h2>')
  end

  it 'show post body' do
    expect(rendered).to include('<p>World</p>')
  end
end
