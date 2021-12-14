Pod::Spec.new do |s|
  s.name                    = 'EUDCCKit'
  s.version                 = '0.0.1'
  s.summary                 = 'A Swift Package to decode, verify and validate EU Digital COVID Certificates for iOS, tvOS, watchOS and macOS'
  s.homepage                = 'https://github.com/fatalaa/EUDCCKit'
  s.license                 = { :file => 'LICENSE' }
  s.author                  = { 'Scandit' => 'support@scandit.com' }
  s.platforms               = { :ios => "12.0" }
  s.swift_version           = '5.3'
  s.source                  = { :git => 'https://github.com/fatalaa/EUDCCKit' }
  s.requires_arc            = true
  s.module_name             = 'EUDCCKit'
  s.dependency 'SwiftCBOR', '= 0.4.3'
  s.frameworks = 'Security'
  s.source_files            = 'Sources/**/*.swift'

end
