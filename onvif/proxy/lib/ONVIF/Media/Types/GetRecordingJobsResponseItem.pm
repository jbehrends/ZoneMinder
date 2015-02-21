package ONVIF::Media::Types::GetRecordingJobsResponseItem;
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

my %JobToken_of :ATTR(:get<JobToken>);
my %JobConfiguration_of :ATTR(:get<JobConfiguration>);

__PACKAGE__->_factory(
    [ qw(        JobToken
        JobConfiguration

    ) ],
    {
        'JobToken' => \%JobToken_of,
        'JobConfiguration' => \%JobConfiguration_of,
    },
    {
        'JobToken' => 'ONVIF::Media::Types::RecordingJobReference',
        'JobConfiguration' => 'ONVIF::Media::Types::RecordingJobConfiguration',
    },
    {

        'JobToken' => 'JobToken',
        'JobConfiguration' => 'JobConfiguration',
    }
);

} # end BLOCK








1;


=pod

=head1 NAME

ONVIF::Media::Types::GetRecordingJobsResponseItem

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
GetRecordingJobsResponseItem from the namespace http://www.onvif.org/ver10/schema.






=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * JobToken


=item * JobConfiguration




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # ONVIF::Media::Types::GetRecordingJobsResponseItem
   JobToken => $some_value, # RecordingJobReference
   JobConfiguration =>  { # ONVIF::Media::Types::RecordingJobConfiguration
     RecordingToken => $some_value, # RecordingReference
     Mode => $some_value, # RecordingJobMode
     Priority =>  $some_value, # int
     Source =>  { # ONVIF::Media::Types::RecordingJobSource
       SourceToken =>  { # ONVIF::Media::Types::SourceReference
         Token => $some_value, # ReferenceToken
       },
       AutoCreateReceiver =>  $some_value, # boolean
       Tracks =>  { # ONVIF::Media::Types::RecordingJobTrack
         SourceTag =>  $some_value, # string
         Destination => $some_value, # TrackReference
       },
       Extension =>  { # ONVIF::Media::Types::RecordingJobSourceExtension
       },
     },
     Extension =>  { # ONVIF::Media::Types::RecordingJobConfigurationExtension
     },
   },
 },




=head1 AUTHOR

Generated by SOAP::WSDL

=cut

