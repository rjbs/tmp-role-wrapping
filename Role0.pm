package Role0;
use Moose::Role;

sub wrapped_method {
  shift->maybe::next::method(@_);
};

1;
