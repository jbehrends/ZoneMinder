
package ONVIF::Media::Elements::GetMetadataConfigurationsResponse;
use strict;
use warnings;

{ # BLOCK to scope variables

sub get_xmlns { 'http://www.onvif.org/ver10/media/wsdl' }

__PACKAGE__->__set_name('GetMetadataConfigurationsResponse');
__PACKAGE__->__set_nillable();
__PACKAGE__->__set_minOccurs();
__PACKAGE__->__set_maxOccurs();
__PACKAGE__->__set_ref();

use base qw(
    SOAP::WSDL::XSD::Typelib::Element
    SOAP::WSDL::XSD::Typelib::ComplexType
);

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use Class::Std::Fast::Storable constructor => 'none';
use base qw(SOAP::WSDL::XSD::Typelib::ComplexType);

Class::Std::initialize();

{ # BLOCK to scope variables

my %Configurations_of :ATTR(:get<Configurations>);

__PACKAGE__->_factory(
    [ qw(        Configurations

    ) ],
    {
        'Configurations' => \%Configurations_of,
    },
    {
        'Configurations' => 'ONVIF::Media::Types::MetadataConfiguration',
    },
    {

        'Configurations' => 'Configurations',
    }
);

} # end BLOCK







} # end of BLOCK



1;


=pod

=head1 NAME

ONVIF::Media::Elements::GetMetadataConfigurationsResponse

=head1 DESCRIPTION

Perl data type class for the XML Schema defined element
GetMetadataConfigurationsResponse from the namespace http://www.onvif.org/ver10/media/wsdl.







=head1 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * Configurations

 $element->set_Configurations($data);
 $element->get_Configurations();





=back


=head1 METHODS

=head2 new

 my $element = ONVIF::Media::Elements::GetMetadataConfigurationsResponse->new($data);

Constructor. The following data structure may be passed to new():

 {
   Configurations =>  { # ONVIF::Media::Types::MetadataConfiguration
     PTZStatus =>  { # ONVIF::Media::Types::PTZFilter
       Status =>  $some_value, # boolean
       Position =>  $some_value, # boolean
     },
     Analytics =>  $some_value, # boolean
     Multicast =>  { # ONVIF::Media::Types::MulticastConfiguration
       Address =>  { # ONVIF::Media::Types::IPAddress
         Type => $some_value, # IPType
         IPv4Address => $some_value, # IPv4Address
         IPv6Address => $some_value, # IPv6Address
       },
       Port =>  $some_value, # int
       TTL =>  $some_value, # int
       AutoStart =>  $some_value, # boolean
     },
     SessionTimeout =>  $some_value, # duration
     AnalyticsEngineConfiguration =>  { # ONVIF::Media::Types::AnalyticsEngineConfiguration
       AnalyticsModule =>  { # ONVIF::Media::Types::Config
         Parameters =>  { # ONVIF::Media::Types::ItemList
           SimpleItem => ,
           ElementItem =>  {
           },
           Extension =>  { # ONVIF::Media::Types::ItemListExtension
           },
         },
       },
       Extension =>  { # ONVIF::Media::Types::AnalyticsEngineConfigurationExtension
       },
     },
     Extension =>  { # ONVIF::Media::Types::MetadataConfigurationExtension
     },
   },
 },

=head1 AUTHOR

Generated by SOAP::WSDL

=cut

