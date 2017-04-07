<head>
    <% base_tag %>
    <title><% if $MetaTitle %>$MetaTitle<% else %>$Title &raquo; $SiteConfig.Title || $SiteConfig.Tagline<% end_if %></title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1  maximum-scale=1 user-scalable=no">
    <meta name="mobile-web-app-capable" content="yes">
    <meta name="HandheldFriendly" content="True">
    <meta name="author" content="Latitude 49 Media Corp - colin@latitude49.ca">
    $MetaTags(false)
    <link rel="shortcut icon" href="/img/favicon.png">
</head>