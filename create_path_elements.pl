#create_path_elements
#creates all elements of file path
#bails out if file exists
use strict;
use File::Basename;
use File::Path;

my $file = "/home/bob/test/foo.txt";
#create path
File::Path::make_path( File::Basename::dirname( $file ) );

#create file
open my $fh, '>', $file or die "Error creating file$!\n" unless ( -e $file ); 