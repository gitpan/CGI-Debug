use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
	      'NAME'	      => 'CGI::Debug',
	      'VERSION_FROM'  => 'Debug.pm', # finds $VERSION
	      'PREREQ_PM'     => 
	      { 
		  'CGI' => 0,
		  'MIME::Lite' => 0,
		  'Data::Dumper' => 0,
		  'Time::HiRes' => 0,
	      },
	      );
