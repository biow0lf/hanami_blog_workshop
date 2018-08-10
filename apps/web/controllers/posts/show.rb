module Web::Controllers::Posts
  class Show
    include Web::Action

    expose :post

    def call(params)
      @post = PostRepository.new.find(params[:id])
    end
  end
end
