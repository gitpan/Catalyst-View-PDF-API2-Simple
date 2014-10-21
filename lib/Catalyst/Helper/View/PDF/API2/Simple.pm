package Catalyst::Helper::View::PDF::API2::Simple;

use strict;

=head1 NAME

Catalyst::Helper::View::PDF::API2::Simple - Helper for PDF::API2::Simple Views

=head1 SYNOPSIS

To create a PDF::API2::Simple view in your Catalyst application, enter the following command:

 script/myapp_create.pl view PDF::API2::Simple PDF::API2::Simple

Then in MyApp.pm, add a configuration item for the View::PDF::API2::Simple include path:

 __PACKAGE__->config('View::PDF::API2::Simple' => {
   INCLUDE_PATH => __PACKAGE__->path_to('root','pdf_templates')
 });

=head1 DESCRIPTION

Helper for PDF::API2::Simple Views.

=head2 METHODS

=head3 mk_compclass

=cut

sub mk_compclass {
    my ( $self, $helper ) = @_;
    my $file = $helper->{file};
    $helper->render_file( 'compclass', $file );
}

=head1 AUTHOR

Jon Allen, L<jj@jonallen.info>

=head1 SEE ALSO

L<Catalyst::View::PDF::API2::Simple>


=head1 COPYRIGHT & LICENSE

Copyright 2009 NonSoLoSoft, all rights reserved.

This program is free software; you can redistribute it and/or modify it
under the same terms as Perl itself.

=cut

1;

__DATA__

__compclass__
package [% class %];

use strict;
use base 'Catalyst::View::PDF::API2::Simple';

=head1 NAME

[% class %] - PDF::API2::Simple View for [% app %]

=head1 DESCRIPTION

PDF::API2::Simple View for [% app %]. 

=head1 AUTHOR

[% author %]

=head1 SEE ALSO

L<[% app %]>

=head1 LICENSE

This library is free software, you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

1;
