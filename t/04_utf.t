#!/usr/bin/env perl6

use HTML::Parser::XML;
use Test;

my $html = slurp 't/data/utf.html';
my $parser = HTML::Parser::XML.new;

$parser.parse($html);
plan 2;

ok $parser.xmldoc.root.elements.elems > 1;
ok $parser.xmldoc.root.name eq 'html';
