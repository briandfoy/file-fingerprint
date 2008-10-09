# $Id: Makefile.PL,v 1.4 2004/07/04 17:04:17 comdog Exp $
use ExtUtils::MakeMaker;

require 5.006;

eval "use Test::Manifest 1.14";

WriteMakefile(
	'NAME'	       => 'File::Fingerprint',
	'ABSTRACT'     => 'This is what the module does',
	'VERSION_FROM' => 'lib/Fingerprint.pm',
	'LICENSE'      => 'perl',
	'AUTHOR'       => 'brian d foy <bdfoy@cpan.org>',
	
	'PREREQ_PM'    => { 
		'Test::More' => '0',
		},

	'PM'           => {
		'lib/Fingerprint.pm'         => '$(INST_LIBDIR)/Fingerprint.pm',
		},

	'MAN3PODS'     => {
		'lib/Fingerprint.pm' => '$(INST_MAN3DIR)/File::Fingerprint.3',
		},

	clean  => { FILES    => q|File-Fingerprint-*| },

	);
