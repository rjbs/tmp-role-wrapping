package Subclass;
use Moose;

BEGIN { with 'Role0'; }

extends 'Class';

1;
