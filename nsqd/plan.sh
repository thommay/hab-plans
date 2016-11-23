pkg_name=nsq
pkg_origin=thom
pkg_version=0.3.8
pkg_maintainer="Thom May <thom@may.lt>"
pkg_license=MIT
pkg_source=https://s3.amazonaws.com/bitly-downloads/${pkg_name}/${pkg_name}-${pkg_version}.linux-amd64.go1.6.2.tar.gz
pkg_shasum=334016b74942d2ec34bf961c663bd84cb22a07793291e165ac1e9fd90f301618
pkg_dirname=${pkg_name}-${pkg_version}.linux-amd64.go1.6.2
pkg_deps=()
pkg_build_deps=()
pkg_bin_dirs=(bin)

do_build() {
  return 0
}

do_install() {
  for bin in bin/nsqd bin/to_nsq bin/nsqadmin $(ls -1 bin/nsq_*); do
    install -v -D $bin $pkg_prefix/$bin
  done
}
