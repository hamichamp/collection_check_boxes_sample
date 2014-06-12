class AuthorPostsController < ApplicationController
  before_action :set_author_post, only: [:show, :edit, :update, :destroy]

  # GET /author_posts
  # GET /author_posts.json
  def index
    @author_posts = AuthorPost.all
  end

  # GET /author_posts/1
  # GET /author_posts/1.json
  def show
  end

  # GET /author_posts/new
  def new
    @author_post = AuthorPost.new
  end

  # GET /author_posts/1/edit
  def edit
  end

  # POST /author_posts
  # POST /author_posts.json
  def create
    @author_post = AuthorPost.new(author_post_params)

    respond_to do |format|
      if @author_post.save
        format.html { redirect_to @author_post, notice: 'Author post was successfully created.' }
        format.json { render :show, status: :created, location: @author_post }
      else
        format.html { render :new }
        format.json { render json: @author_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /author_posts/1
  # PATCH/PUT /author_posts/1.json
  def update
    respond_to do |format|
      if @author_post.update(author_post_params)
        format.html { redirect_to @author_post, notice: 'Author post was successfully updated.' }
        format.json { render :show, status: :ok, location: @author_post }
      else
        format.html { render :edit }
        format.json { render json: @author_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /author_posts/1
  # DELETE /author_posts/1.json
  def destroy
    @author_post.destroy
    respond_to do |format|
      format.html { redirect_to author_posts_url, notice: 'Author post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_author_post
      @author_post = AuthorPost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def author_post_params
      params.require(:author_post).permit(:post_id, :author_id)
    end
end
