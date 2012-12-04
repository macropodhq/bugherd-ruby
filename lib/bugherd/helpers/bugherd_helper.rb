module BugHerdHelper

  def bugherd_tag
    javascript_tag "
      (function (d, t) {
        var bh = d.createElement(t), s = d.getElementsByTagName(t)[0];
        bh.type = 'text/javascript';
        bh.src = '//www.bugherd.com/sidebarv2.js?apikey=#{BugHerd.configuration.project_key}';
        s.parentNode.insertBefore(bh, s);
      })(document, 'script');
    "
  end

end
