# selfaware

[![Build Status](https://travis-ci.org/tdaff/selfaware.svg?branch=master)](https://travis-ci.org/tdaff/selfaware)

Testing Travis CI's ability to extract information from previous builds.
Added to [libAtoms/QUIP](https://github.com/libAtoms/QUIP/blob/public/tests/travis/travis.yml)
where the testing only builds a subset most of the time and runs a broader
set of configurations either daily or weekly. If one of the jobs fails
then this ensures that it will be re-tested until it passes again, even if
it would normally be skipped.

Currently seems a bit fragile and often complains about not being
logged in, even though it is a public repository, but seems to work
after a few retries (maybe API rate limits?).

