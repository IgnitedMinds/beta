class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]

  # GET /articles
  # GET /articles.json
  def index
    @articles = Article.all
  end

  # GET /articles/1
  # GET /articles/1.json
  def show
  end

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
