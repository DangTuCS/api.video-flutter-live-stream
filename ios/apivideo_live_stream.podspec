# ruby
Pod::Spec.new do |s|
  s.name             = 'apivideo_live_stream'
  s.version          = '0.0.1'
  s.summary          = 'API Video live stream Flutter plugin.'
  s.description      = <<-DESC
API Video live stream Flutter plugin bridging the native iOS SDK.
  DESC
  s.homepage         = 'https://github.com/apivideo'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Your Company' => 'email@example.com' }
  s.source           = { :path => '.' }

  s.platform         = :ios, '13.0'
  s.swift_version    = '5.0'
  s.static_framework = true
  s.requires_arc     = true

  # Ensure sources are picked up and headers are exported for the module map.
  s.source_files         = 'Classes/**/*.{h,m,swift}'
  s.public_header_files  = 'Classes/**/*.h'

  s.dependency 'Flutter'
  s.dependency 'ApiVideoLiveStream', '1.4.6'

  # Force a proper module named `apivideo_live_stream` for @import, enable modules,
  # stabilize Swift interface, and keep ObjC categories linked.
  s.pod_target_xcconfig = {
    'DEFINES_MODULE'                       => 'YES',
    'CLANG_ENABLE_MODULES'                 => 'YES',
    'PRODUCT_MODULE_NAME'                  => 'apivideo_live_stream',
    'BUILD_LIBRARY_FOR_DISTRIBUTION'       => 'YES',
    'OTHER_LDFLAGS'                        => '$(inherited) -ObjC',
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386'
  }
  s.user_target_xcconfig = {
    'OTHER_LDFLAGS' => '$(inherited) -ObjC'
  }
end
