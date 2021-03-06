###
# This is the place to override the ruby cookbook's default attributes.
#
# Do not edit THIS file directly. Instead, create
# "ruby/attributes/customize.rb" in your cookbook repository and
# put the overrides in YOUR customize.rb file.
###
default[:ruby][:major_version] = "2"
default[:ruby][:minor_version] = "3"
default[:ruby][:patch_version] = "1"
default[:ruby][:pkgrelease]    = "1"

default[:ruby][:full_version] = [node[:ruby][:major_version], node[:ruby][:minor_version]].join(".")
default[:ruby][:version] = [node[:ruby][:full_version], node[:ruby][:patch_version]].join(".")
