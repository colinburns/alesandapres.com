<!-- offers	 -->
<div class="venue-detail {$URLSegment}">
    <div class="container">
        <div class="venue-logo">
            {$VenueLogo}
        </div>
        {$Content}
        <% if $Children %>
            <div class="offers">
                <div class="app-title">
                    <h4>Pouring at {$MenuTitle} today</h4>
                </div>
                <div class="row">
                <% loop $Children %>
                    <div class="col s4">
                        <div class="entry brewery-button">
                            <a href="{$Link}">
                                {$BreweryLogo}
                            </a>
                        </div>
                    </div>
                    <% if $Pos == 3 %>
                    </div>
                    <div class="row">
                    <% end_if %>
                <% end_loop %>
                </div>
            </div>
        <% end_if %>
    </div>
</div>
{$GoogleMapCode.RAW}
<%--$Form--%>
<%--$CommentsForm--%>