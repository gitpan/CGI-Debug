# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.

BEGIN 
{
    require 5.004;
}

use ExtUtils::MakeMaker 5.16;

WriteMakefile(
	      'NAME'	      => 'CGI::Debug',
	      'VERSION_FROM'  => 'Debug.pm', # finds $VERSION
	      'PREREQ_PM'     => 
	      { 
		  'CGI'          => 0,
		  'Mail::Send'   => 0,
		  'Data::Dumper' => 0,
		  'Time::HiRes'  => 0,
	      },
	      'dist'          => 
	      {
		  'COMPRESS' => 'gzip',
		  'SUFFIX'   => 'gz',
	      }
	      );
