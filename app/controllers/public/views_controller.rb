class Public::ViewsController < PublicController
    def blogItem
        @blog = Blog.find_by(id: params[:id])
        @blogrelate = Blog.where(category_id: @blog.category_id)
    end

    def blogCurrentTag
        @taggings = Tagging.where(tag_id: params[:id])

        # render json: { blogs: @blogs}
    end

    def search_blog
        if params[:query].blank?
            @blogs = Blog.all

            render template: "public/views/blog-list-output-search"
        else
            @parameter = params[:query].downcase
            # @blogs = Blog.search_by_title(params[:query])
            # @results = Blog.all.where("lower(name) LIKE ?", "%#{@parameter}%")
            # @results = Blog.joins(:slug, :title).search(params[:query])
            @blogs = Blog.where("lower(title) LIKE ?", "%#{@parameter}%")
            # @blogs = Blog.where(title: params[:query])
            
            render template: "public/views/blog-list-output-search"
        end
    end

    def listblog
        @blogs = Blog.all.paginate(page: params[:page], per_page: 2)

        render template: "public/views/blogList"
    end
    
    def about
        render template: "public/views/about"
    end
end