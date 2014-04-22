#Perl 6: HTML::Parser::XML;


This module is a hack until someone builds a real HTML::Parser::XML

##Status:
###Not working:
I need to make HTML the root element..right now it is <nil>
Auto closing tags when I run into the next element that *should* close the tag before it ..
###Working on:
The <nil> problem

###Parser:
```perl6
my $html   = LWP::Simple.get('http://some-non-https-site.com/');
my $parser = HTML::Parser::XML.new;
$parser.parse($html);
$parser.d; # XML::Document
```

Contact me, segomos on irc.freenode #perl6 (segomos)

License: Artistic 2.0
