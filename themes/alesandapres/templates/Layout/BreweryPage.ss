<!-- offers	 -->
<div class="venue-detail {$URLSegment}">
    <div class="container">
        <div class="venue-logo">
            {$BreweryLogo}
        </div>
        {$Content}
        <% if $Beers %>
            <div class="app-title">
                <h4>Pouring at {$MenuTitle} table today</h4>
            </div>
            <% loop $Beers %>
                <div class="row">
                    <div class="entry beer-button">
                        <div class="col s3">
                        {$BeerImage}
                        </div>
                        <div class="col s9">
                        <h3>{$Name}</h3>
                            <h6 class="rate-this-beer">Rate this beer</h6>
                            <% if $Top.BeerRating($ID) > 0 %>
                                <p id="BeerStarRating-{$ID}" class="beer-star-rating">
                                <% if $Top.BeerRating($ID) = 1 %>
                                    <i class="fa fa-star star-rating-complete" data-beer-id="{$ID}" data-rating-position="1"></i>
                                    <i class="fa fa-star-o star-rating-complete" data-beer-id="{$ID}" data-rating-position="2"></i>
                                    <i class="fa fa-star-o star-rating-complete" data-beer-id="{$ID}" data-rating-position="3"></i>
                                    <i class="fa fa-star-o star-rating-complete" data-beer-id="{$ID}" data-rating-position="4"></i>
                                    <i class="fa fa-star-o star-rating-complete" data-beer-id="{$ID}" data-rating-position="5"></i>
                                <% else_if $Top.BeerRating($ID) = 2 %>
                                    <i class="fa fa-star star-rating-complete" data-beer-id="{$ID}" data-rating-position="1"></i>
                                    <i class="fa fa-star star-rating-complete" data-beer-id="{$ID}" data-rating-position="2"></i>
                                    <i class="fa fa-star-o star-rating-complete" data-beer-id="{$ID}" data-rating-position="3"></i>
                                    <i class="fa fa-star-o star-rating-complete" data-beer-id="{$ID}" data-rating-position="4"></i>
                                    <i class="fa fa-star-o star-rating-complete" data-beer-id="{$ID}" data-rating-position="5"></i>
                                <% else_if $Top.BeerRating($ID) = 3 %>
                                    <i class="fa fa-star star-rating-complete" data-beer-id="{$ID}" data-rating-position="1"></i>
                                    <i class="fa fa-star star-rating-complete" data-beer-id="{$ID}" data-rating-position="2"></i>
                                    <i class="fa fa-star star-rating-complete" data-beer-id="{$ID}" data-rating-position="3"></i>
                                    <i class="fa fa-star-o star-rating-complete" data-beer-id="{$ID}" data-rating-position="4"></i>
                                    <i class="fa fa-star-o star-rating-complete" data-beer-id="{$ID}" data-rating-position="5"></i>
                                <% else_if $Top.BeerRating($ID) = 4 %>
                                    <i class="fa fa-star star-rating-complete" data-beer-id="{$ID}" data-rating-position="1"></i>
                                    <i class="fa fa-star star-rating-complete" data-beer-id="{$ID}" data-rating-position="2"></i>
                                    <i class="fa fa-star star-rating-complete" data-beer-id="{$ID}" data-rating-position="3"></i>
                                    <i class="fa fa-star star-rating-complete" data-beer-id="{$ID}" data-rating-position="4"></i>
                                    <i class="fa fa-star-o star-rating-complete" data-beer-id="{$ID}" data-rating-position="5"></i>
                                <% else_if $Top.BeerRating($ID) = 5 %>
                                    <i class="fa fa-star star-rating-complete" data-beer-id="{$ID}" data-rating-position="1"></i>
                                    <i class="fa fa-star star-rating-complete" data-beer-id="{$ID}" data-rating-position="2"></i>
                                    <i class="fa fa-star star-rating-complete" data-beer-id="{$ID}" data-rating-position="3"></i>
                                    <i class="fa fa-star star-rating-complete" data-beer-id="{$ID}" data-rating-position="4"></i>
                                    <i class="fa fa-star star-rating-complete" data-beer-id="{$ID}" data-rating-position="5"></i>
                                <% end_if %>
                                </p>
                            <% else %>
                                <p id="BeerStarRating-{$ID}" class="beer-star-rating">
                                    <i class="fa fa-star-o star-rating" data-beer-id="{$ID}" data-rating-position="1"></i>
                                    <i class="fa fa-star-o star-rating" data-beer-id="{$ID}" data-rating-position="2"></i>
                                    <i class="fa fa-star-o star-rating" data-beer-id="{$ID}" data-rating-position="3"></i>
                                    <i class="fa fa-star-o star-rating" data-beer-id="{$ID}" data-rating-position="4"></i>
                                    <i class="fa fa-star-o star-rating" data-beer-id="{$ID}" data-rating-position="5"></i>
                                </p>
                            <% end_if %>
                            {$Description}
                            <ul class="beer-details">
                                <% if $Style %><li><strong>Style:</strong> {$Style}</li><% end_if %>
                                <% if $HopsUsed %><li><strong>Hops:</strong> {$HopsUsed}</li><% end_if %>
                                <% if $Colour %><li><strong>Colour:</strong> {$Colour}</li><% end_if %>
                                <% if $Scent %><li><strong>Scent:</strong> {$Scent}</li><% end_if %>
                                <% if $Flavour %><li><strong>Flavour:</strong> {$Flavour}</li><% end_if %>
                                <% if $AlcoholVolume %><li><strong>Alcohol Volume:</strong> {$AlcoholVolume}</li><% end_if %>
                                <% if $IBU %><li><strong>IBU:</strong> {$IBU}</li><% end_if %>
                            </ul>
                        </div>
                    </div>
                </div>
            <% end_loop %>
        <% end_if %>
    </div>
</div>
<%--$Form--%>
<%--$CommentsForm--%>