module Web::Controllers::Posts
  class Destroy
    include Web::Action

    def initialize(repository: PostRepository.new)
      @repository = repository
    end

    def call(params)
      @repository.delete(params[:id])

      redirect_to routes.path(:posts)
    end
  end
end
