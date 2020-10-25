# THE BASICS:

Set($rtname, '@rt_domain@');
Set($Organization, '@rt_org@');

#EMAIL

Set($CorrespondAddress , '@rt_correspond_address@');
Set($CommentAddress , '@rt_comment_address@');

# THE WEBSERVER:

Set($WebPath , "@web_path@");
Set($WebPort , "@web_base_port@");
Set($WebBaseURL , "@rt_ssl@://@rt_domain@");
Set($WebDomain, '@rt_domain@');

Set($CanonicalizeRedirectURLs, 1);
Set($CanonicalizeURLsInFeeds, 1);
