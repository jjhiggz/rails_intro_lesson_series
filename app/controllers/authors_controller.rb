class AuthorsController < ApplicationController
  def index
    authors = Author.all
    render json: authors
  end

  def show
    author = Author.find(params[:id])
    render json: author
  end

  def create
    author = Author.create(
      name: params[:name],
      age: params[:age]
    )
    render json: author
  end

  def update
    author = Author.find(params[:id])
    author.update(
      name: params[:name],
      age: params[:age]
    )

    render json: author
  end

  def destroy
    author = Author.find(params[:id])
    author.destroy
    render json: {message: "Author Deleted Successfully"}
  end
end
