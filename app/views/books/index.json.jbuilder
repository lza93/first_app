json.array!(@books) do |book|
  json.extract! book, :id, :year, :term, :department, :coursenumber, :coursesection, :required_textbook
  json.url book_url(book, format: :json)
end

