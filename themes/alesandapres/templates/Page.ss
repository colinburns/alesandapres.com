<!DOCTYPE html>
<html lang="en">
<% include Head %>
<body data-url="{$Link}">
<% include NavBar %>
<% include NavPanelRight %>
<% if $URLSegment == 'home' %>
    <% include Slider %>
    <div class="offers">
        <div class="container">
            <% loop $Venues %>
                <% if $Odd %>
                <div class="row">
                <% end_if %>
                <div class="col s6">
                    <div class="entry venue-button {$LogoType.lowercase}-logo">
                        <a href="{$Link}">
                            {$VenueLogo}
                        </a>
                    </div>
                </div>
                <% if $Even %>
                </div><%-- If we don't end on an even we don't have enough </div> tags --%>
                <% end_if %>
            <% end_loop %>
        </div>
    </div>
<% end_if %>
    {$Layout}
<% include Footer %>
<script>
    (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
                (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
            m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
    })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');
    ga('create', 'UA-96146580-1', 'auto');
    ga('send', 'pageview');
</script>
</body>
</html>