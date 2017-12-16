The purpose of this Perl 5 / CPAN command-line app is to perform
a simple [arithmetic sum](https://en.wikipedia.org/wiki/Addition) of
a stream of decimal [bigints](https://en.wikipedia.org/wiki/Arbitrary-precision_arithmetic),
each given as a string on a single line, and output the sum.

For example:

```
$ (echo 1 ; echo 24 ; echo 900) | intsum
925
```

I have written various variations of this task several times and decided I
should use something common once and for all.

# Screenshots

![Image](<http://www.shlomifish.org/Files/files/images/gwenview-fc-solve-svg-graph.png>)

# Badges

[![Build Status](https://travis-ci.org/shlomif/perl-App-SVG-Graph.svg?branch=master)](https://travis-ci.org/shlomif/perl-App-SVG-Graph)

# Licence

intsum is open source under the permissive MIT/Expat licence.

# SEE ALSO

- [MetaCPAN Page](https://metacpan.org/release/App-intsum)
written in Node.js/npm.
- [“Directory of Numerical Software”](http://www.shlomifish.org/open-source/resources/numerical-software/) - on Shlomi Fish’s web site and under CC-by.

# THANKS

- Thanks to [Sawyer X](http://blogs.perl.org/users/sawyer_x/) for telling me
why CPAN authors should write more command line applications.
- Thanks for "sir galahad" for motivating me to write this.
