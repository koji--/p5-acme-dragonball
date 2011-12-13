package Acme::DragonBall;
use v5.14;
use warnings;
use utf8;
use parent qw/Exporter/;
use Encode;
use POSIX qw(floor);

our $VERSION   = '0.01';
our @EXPORT_OK = qw/radar/;

my %number = (
    1 => '一',
    2 => '二',
    3 => '三',
    4 => '四',
    5 => '五',
    6 => '六',
    7 => '七',
);

my %mei_selif = (
    0 => '魔封波じゃっ！！！！',
    1 => '魔貫光殺砲！',
    2 => 'レッドリボン軍だ！',
    3 => '狼牙風風拳！',
    4 => 'のびろ！如意棒！！！',
    5 => 'きんとうーん！',
    6 => '天空X字拳！',
    7 => 'どどん！',
    8 => '萬國驚天掌！',
);

sub radar {
    my $ball = shift;
    $ball =~ s/[^*]//g;
    my $hoshi = length $ball;
    my $selif;
    if ( exists $number{$hoshi} ) {
        $selif = "$number{$hoshi}星球みっけ！";
    }
    elsif ( $hoshi == 28 ) {
        $selif = '★ ★ ★  ！！！いでよ、神龍！！！！ ★ ★ ★ ★';
    }
    else {
        $selif = $mei_selif{floor( rand(9) )};
    }
    say encode_utf8($selif);
}

1;
__END__

=head1 NAME

Acme::DragonBall - Oss!!! Ora Gokuuuuuuuu!!!!

=head1 SYNOPSIS

  use Acme::DragonBall;

  radar("afdsafhshfhds*****aDFdsafsd"); # say '五星球みっけ！'

=head1 DESCRIPTION

Acme::DragonBall is fun module by old animation 'Dragon Ball'.

=head1 AUTHOR

Koji Takiguchi E<lt>kojiel {at} gmail.comE<gt>

=head1 SEE ALSO

=head1 LICENSE

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut
