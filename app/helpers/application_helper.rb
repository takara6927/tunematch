module ApplicationHelper
  def youtube_embed_url(url)
    return nil if url.blank?
    uri = URI.parse(url) rescue nil
    return nil unless uri&.host
    params = Rack::Utils.parse_nested_query(uri.query.to_s)
    video_id =
      if uri.host.include?("youtu.be")
        uri.path.split("/").last
      elsif uri.host.include?("youtube.com")
        if uri.path == "/watch"
          params["v"]
        elsif uri.path.start_with?("/embed/", "/shorts/")
          uri.path.split("/").last
        end
      end
    return nil if video_id.blank?
    start_raw = params["t"] || params["start"]
    start_seconds = nil
    if start_raw.present?
      if start_raw =~ /\A\d+\z/
        start_seconds = start_raw.to_i
      else
        h = start_raw[/(\d+)h/, 1].to_i
        m = start_raw[/(\d+)m/, 1].to_i
        s = start_raw[/(\d+)s/, 1].to_i
        start_seconds = h * 3600 + m * 60 + s
      end
    end

    base = "https://www.youtube-nocookie.com/embed/#{ERB::Util.url_encode(video_id)}"
    start_seconds && start_seconds > 0 ? "#{base}?start=#{start_seconds}" : base
  end
end
