class BookQuery < Query

  base_query Book.includes(:author).all

  def add_title_filter(value)
    query.where('title LIKE ?', "%#{value}%")
  end

  def add_isbn_filter(value)
    query.where(isbn: value)
  end

  def add_author_filter(value)
    query.joins(:author).where('authors.surname LIKE ? OR authors.name LIKE ?', "%#{value}%", "%#{value}%")
  end

end
