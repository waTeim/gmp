Pod::Spec.new do |s|
  s.name         = "gmp"
  s.version      = "5.1.3"
  s.summary      = "The GNU Multiple Precision Arithmetic Library"
  s.description  = <<-DESC
GMP is a free library for arbitrary precision arithmetic, operating on signed integers, rational numbers, and floating-point numbers. There is no practical limit to the precision except the ones implied by the available memory in the machine GMP runs on. GMP has a rich set of functions, and the functions have a regular interface.

The main target applications for GMP are cryptography applications and research, Internet security applications, algebra systems, computational algebra research, etc.

GMP is carefully designed to be as fast as possible, both for small operands and for huge operands. The speed is achieved by using fullwords as the basic arithmetic type, by using fast algorithms, with highly optimised assembly code for the most common inner loops for a lot of CPUs, and by a general emphasis on speed.

The first GMP release was made in 1991. It is continually developed and maintained, with a new release about once a year.
                   DESC
  s.homepage     = "https://gmplib.org/"
  s.screenshots  = 
  s.license      = 'LPGL'
  s.author       = { "waTeim" => "truthset@gmail.com" }
  s.source       = { :git => "https://github.com/waTeim/gmp.git", :tag => s.version.to_s }

  s.platform     = :osx, '10.6'
  s.requires_arc = false
  s.vendored_libraries = 'lib/*.a'
  s.source_files = s.public_header_files =
    'include/*.h'
  s.header_mappings_dir = 'include'
end
