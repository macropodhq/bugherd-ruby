module BugHerdHelper

  def bugherd_tag(options = {})
    key = ENV['BUGHERD_PROJECT_KEY'] || BugHerd.configuration.project_key
    if options[:turbolinks]
      javascript_tag "
        var BugHerdConfig = #{options.to_json};
        $(function() {
          if (window._bugHerd) {
            window._bugHerd.loadingComplete = false;
          }
          (function (d, t) {
            var bh = d.createElement(t), s = d.getElementsByTagName(t)[0];
            bh.type = 'text/javascript';
            bh.src = '//www.bugherd.com/sidebarv2.js?apikey=#{key}';
            s.parentNode.insertBefore(bh, s);
          })(document, 'script');
        });
      "
    else
      javascript_tag "
        var BugHerdConfig = #{options.to_json};
        (function (d, t) {
          var bh = d.createElement(t), s = d.getElementsByTagName(t)[0];
          bh.type = 'text/javascript';
          bh.src = '//www.bugherd.com/sidebarv2.js?apikey=#{key}';
          s.parentNode.insertBefore(bh, s);
        })(document, 'script');
      "
    end
  end

end
