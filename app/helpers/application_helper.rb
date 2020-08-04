module ApplicationHelper
  def shortenUrl(url)
    uri=URI.parse(url)
    URI.parse(url).host
  end
end
