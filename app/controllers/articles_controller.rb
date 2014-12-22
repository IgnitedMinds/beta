class ArticlesController < InheritedResources::Base
  actions :index, :show
  has_scope :has_tag

  http_basic_authenticate_with :name => "lewis", :password => "password", only: :new

  def new
    @article = Article.new
  end


  # POST /articles
  # POST /articles.json
  def create
    @article = Article.new(article_params)

    respond_to do |format|
      if @article.save
        format.html { redirect_to @article, notice: 'Article was successfully created.' }
        format.json { render :show, status: :created, location: @article }
      else
        format.html { render :new }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /articles/1
  # PATCH/PUT /articles/1.json


  # DELETE /articles/1
  # DELETE /articles/1.json


  private
  # Use callbacks to share common setup or constraints between actions.
  def set_article
    @article = Article.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def article_params
    params.require(:article).permit(
    :name,
    :user_id,
    :content,
    :content2,
    :description,
    :thumbnail,
    :video_id,
    :body_img1,
    :bg_img,
    :tag,
    :cta_button,
    :background,
    :header,
    :body1
    )
  end



end
