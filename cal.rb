require 'ffi'

module MyCal
  extend FFI::Library
  ffi_lib 'c' # use libc
  attach_function :puts, [:string], :int # puts function is from libc

  ffi_lib 'cal' # use libcal write by myself
  attach_function :sum, [:int, :int], :int # sum function is from libcal
end

MyCal.puts 'I am using libcal write by myself.'
total = MyCal.sum(1, 3)
p "sum 1 and 3 is #{total}"
