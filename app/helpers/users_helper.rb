module UsersHelper
  def website_heading

    # Using Net::HTTP throws timeout , so Used Nokogiri instead. 
    # begin
    #   #Net::HTTP.get(URI(url)) =~ /<h[^>]+>(.*)<\/h[^>]+>/
    #   Net::HTTP.get(URI(url)) =~ /<title>(.*)<\/title>/
    #   $1
    # rescue Timeout::Error => error
    #   log "timeout sending event to server"
    # end

    # Provided URL directly , cause website_heading(url) also throughs timeout error. 
    Nokogiri::HTML::Document.parse(HTTParty.get("http://www.google.com").body).title
  end
end
