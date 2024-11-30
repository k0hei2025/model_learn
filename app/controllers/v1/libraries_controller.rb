class V1::LibrariesController < ApplicationController
  def create
    # Extracting the author and books data from the params
    author_params = params.require(:author).permit(:name)
    books_params = params.require(:books).map do |book|
      book.permit(:title, :published_date, :genre)
    end

    ActiveRecord::Base.transaction do
      # Create the author
      author = Author.create!(author_params)

      # Create each book and associate it with the newly created author
      books_params.each do |book_param|
        author.books.create!(book_param)
      end
    end

    # Responding with success message
    render json: { message: 'Author and books created successfully.' }, status: :created
  rescue StandardError => e
    # Handling exceptions and rendering error message
    render json: { error: e.message }, status: :unprocessable_entity
  end
end
