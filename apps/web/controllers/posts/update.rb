module Web::Controllers::Posts
  class Update
    include Web::Action

    params do
      required(:post).schema do
        required(:title).filled(:str?)
        required(:body).filled(:str?)
      end
    end

    def initialize(repository: PostRepository.new)
      @repository = repository
    end

    def call(params)
      if params.valid?
        post = @repository.update(params[:id], params[:post])

        redirect_to routes.path(:post, id: post.id)
      end
    end
  end
end
