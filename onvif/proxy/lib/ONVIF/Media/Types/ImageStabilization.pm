package ONVIF::Media::Types::ImageStabilization;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'http://www.onvif.org/ver10/schema' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use Class::Std::Fast::Storable constructor => 'none';
use base qw(SOAP::WSDL::XSD::Typelib::ComplexType);

Class::Std::initialize();

{ # BLOCK to scope variables

my %Mode_of :ATTR(:get<Mode>);
my %Level_of :ATTR(:get<Level>);
my %Extension_of :ATTR(:get<Extension>);

__PACKAGE__->_factory(
    [ qw(        Mode
        Level
        Extension

    ) ],
    {
        'Mode' => \%Mode_of,
        'Level' => \%Level_of,
        'Extension' => \%Extension_of,
    },
    {
        'Mode' => 'ONVIF::Media::Types::ImageStabilizationMode',
        'Level' => 'SOAP::WSDL::XSD::Typelib::Builtin::float',
        'Extension' => 'ONVIF::Media::Types::ImageStabilizationExtension',
    },
    {

        'Mode' => 'Mode',
        'Level' => 'Level',
        'Extension' => 'Extension',
    }
);

} # end BLOCK








1;


=pod

=head1 NAME

ONVIF::Media::Types::ImageStabilization

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
ImageStabilization from the namespace http://www.onvif.org/ver10/schema.






=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * Mode


=item * Level


=item * Extension




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # ONVIF::Media::Types::ImageStabilization
   Mode => $some_value, # ImageStabilizationMode
   Level =>  $some_value, # float
   Extension =>  { # ONVIF::Media::Types::ImageStabilizationExtension
   },
 },




=head1 AUTHOR

Generated by SOAP::WSDL

=cut

