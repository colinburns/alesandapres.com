<div class="panel-control-right">
    <ul id="slide-out-right" class="side-nav collapsible"  data-collapsible="accordion">
        <li>
            <div class="photos">
                <a href="/enter-to-win">
                    <img src="/assets/Uploads/case-of-beer.jpg" alt="">
                    <h3>Enter to WIN a case of beer!</h3>
                </a>
            </div>
        </li>
        <li>
            <a href="/home"><i class="fa fa-home"></i>Home</a>
        </li>
        <li>
            <div class="collapsible-header"><i class="fa fa-map-marker"></i>Venues <span><i class="fa fa-chevron-right"></i></span></div>
            <div class="collapsible-body">
                <ul class="side-nav-panel">
                    <% loop $Venues %>
                        <li><a href="{$Link}">{$MenuTitle}</a></li>
                    <% end_loop %>
                </ul>
            </div>
        </li>
        <li>
            <div class="collapsible-header"><i class="fa fa-beer"></i>Breweries <span><i class="fa fa-chevron-right"></i></span></div>
            <div class="collapsible-body">
                <ul class="side-nav-panel">
                    <% loop $Breweries %>
                    <li><a href="{$Link}">{$MenuTitle}</a></li>
                    <% end_loop %>
                </ul>
            </div>
        </li>
        <li>
            <a href="/favourite-beers-leaderboard"><i class="fa fa-star"></i>Leaderboard (based on ratings)</a>
        </li>
        <li>
            <a href="/enter-to-win"><i class="fa fa-trophy"></i>Enter to WIN a case of beer!</a>
        </li>
    </ul>
</div>