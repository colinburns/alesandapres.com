<!-- offers	 -->
<div class="leaderboard-page {$URLSegment}">
    <div class="container">
        {$Content}
        <% if $Leaderboard %>
                <h2 style="text-align:center;">Leaderboard</h2>
                <p>This is a real-time analysis of the Star ratings that are available on each Beer or Cider on the site. The calculations is the average of Star Ratings with a minimum of 10 votes to be eligible.</p>
                <% loop $Leaderboard %>
                    <div class="row leaderboard-row leaderboard-row-{$Pos}">
                        <div class="col s1 leaderboard-position"><h5>{$Pos}.</h5></div>
                        <div class="col s2 leaderboard-image">{$BeerImage}</div>
                        <div class="col s7 leaderboard-name">
                            <h6>{$Name}</h6>
                            <p><em>{$BreweryPage.MenuTitle}</em></p>
                        </div>
                        <div class="col s2 leaderboard-rating"><h6>{$AverageStarRatingRounded}/5</h6></div>
                    </div>
                <% end_loop %>
        <% else %>
            <h2 style="text-align:center;">Leaderboard</h2>
            <p>This is a real-time analysis of the Star ratings that are available on each Beer or Cider on the site. The calculations is the average of Star Ratings with a minimum of 10 votes to be eligible.</p>
            <h3 style="text-align:center;margin-bottom: 250px;">Awaiting Results</h3>
        <% end_if %>
    </div>
</div>
<%--$Form--%>
<%--$CommentsForm--%>