module Web::Controllers::Posts
  class Create
    include Web::Action

    def initialize(repository: PostRepository.new)
      @repository = repository
    end

    def call(params)
      post = @repository.create(params[:post])

      redirect_to routes.path(:post, id: post.id)
    end
  end
end
