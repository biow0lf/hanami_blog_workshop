module Web::Controllers::Posts
  class Index
    include Web::Action

    expose :posts

    def call(params)
      @repository = PostRepository.new

      @posts = @repository.all
    end
  end
end
