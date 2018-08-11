module Web::Controllers::Posts
  class PostParams < Web::Action::Params
    params do
      required(:post).schema do
        required(:title).filled(:str?)
        required(:body).filled(:str?)
      end
    end
  end
end
