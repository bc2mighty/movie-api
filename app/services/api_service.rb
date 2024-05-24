class ApiService
  include HTTParty
  base_uri "https://api.themoviedb.org/3"

  def self.create_post(path)
  end

  def self.get_call(path)
    res = get(path)
    return JSON.parse res.body
  end
end