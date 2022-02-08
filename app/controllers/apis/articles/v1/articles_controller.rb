class Apis::Articles::V1::ArticlesController < ApplicationController
  def articles_json
    @articles = []
    Article.all.each do |article|
      @articles << get_formatted_article(article)
    end
    render json: @articles
  end

  private

  def get_formatted_article(article)
    formated_article ={
      id: article.id,
      title: article.title,
      body: article.body,
      created_at: article.created_at,
      updated_at: article.updated_at
    }
  end
end