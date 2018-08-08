module Web::Controllers::Posts
  class Index
    include Web::Action

    expose :posts

    def initialize(repository: PostRepository.new)
      @repository = repository
    end

    def call(params)
      @posts = @repository.all
    end
  end
end
