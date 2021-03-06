#!/usr/bin/env bats

export PATH="${BATS_TEST_DIRNAME}/../bin:${PATH}"

curl() { echo called curl "$@"; }
export -f curl

@test 'ljc-curl-resolve without arguments prints usage and fails' {
  run ljc-curl-resolve
  [ "$status" -eq 1 ]
  [ "${lines[0]}" = "Usage: ljc-curl-resolve [OPTIONS...] IP_ADDRESS DOMAIN [URL]" ]
}

@test 'ljc-curl-resolve with incomplete arguments prints usage and fails' {
  run ljc-curl-resolve 1.2.3.4
  [ "$status" -eq 1 ]
  [ "${lines[0]}" = "Usage: ljc-curl-resolve [OPTIONS...] IP_ADDRESS DOMAIN [URL]" ]
}

@test 'ljc-curl-resolve with -h prints usage' {
  run ljc-curl-resolve -h
  [ "$status" -eq 0 ]
  [ "${lines[0]}" = "Usage: ljc-curl-resolve [OPTIONS...] IP_ADDRESS DOMAIN [URL]" ]
}

@test 'ljc-curl-resolve with a URL argument calls curl' {
  r80='--resolve example.com:80:1.2.3.4'
  r443='--resolve example.com:443:1.2.3.4'
  url='http://example.org'

  run ljc-curl-resolve 1.2.3.4 example.com http://example.org
  [ "$status" -eq 0 ]
  [ "${lines[0]}" = "called curl $r80 $r443 --verbose $url" ]
}

@test 'ljc-curl-resolve without a URL argument builds a URL from the domain' {
  r80='--resolve example.com:80:1.2.3.4'
  r443='--resolve example.com:443:1.2.3.4'
  url='http://example.com'

  run ljc-curl-resolve 1.2.3.4 example.com
  [ "$status" -eq 0 ]
  [ "${lines[0]}" = "called curl $r80 $r443 --verbose $url" ]
}
