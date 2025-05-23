#!/usr/bin/perl

use strict;
use warnings;

use utf8;

use Shlomif::Screenplays::EPUB ();

my $gfx = 'who-is-qoheleth.svg.png';

my @images = ( $gfx, );

my $obj = Shlomif::Screenplays::EPUB->new(
    {
        images => { ( map { $_ => "images/$_", } @images ), },
    }
);

$obj->run();

{
    my $epub_basename = 'Terminator-Liberation';
    $obj->epub_basename($epub_basename);

    $obj->output_json(
        {
            data => {
                filename => $epub_basename,
                title    =>
q{Terminator: Liberation : a self-referntial parody of the Terminator franchise},
                authors => [
                    {
                        name => "Shlomi Fish",
                        sort => "Fish, Shlomi",
                    },
                ],
                contributors => [
                    {
                        name => "Shlomi Fish",
                        role => "oth",
                    },
                ],
                cover  => "images/$gfx",
                rights =>
"Creative Commons Attribution Noncommercial ShareAlike Unported (CC-by-nc-sa-3.0)",
                publisher  => 'http://www.shlomifish.org/',
                language   => 'en-GB',
                subjects   => [ 'FICTION/Humorous', 'Judaism', 'Bible', ],
                identifier => {
                    scheme => 'URL',
                    value  =>
'https://www.shlomifish.org/humour/Terminator/Liberation/',
                },
            },
        },
    );
}
