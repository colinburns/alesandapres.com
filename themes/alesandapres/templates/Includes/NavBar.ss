<!-- navbar -->
<div class="navbar">
    <div class="container">
        <% if $URLSegment != 'home' %>
            <i class="fa fa-chevron-left back-one" style="float: left;display: block;width: 20px;font-size: 29px;padding: 5px 0px;color: #fff;margin-right: 10px;"></i>
        <% end_if %>
        <div class="site-title">
            <a href="/"><h1><img src="{$themeDir}/img/logo.png"></h1></a>
        </div>
        <div class="panel-control-right">
            <a href="#" data-activates="slide-out-right" class="sidenav-control-right"><i class="fa fa-bars"></i></a>
        </div>
    </div>
</div>
<!-- end navbar -->