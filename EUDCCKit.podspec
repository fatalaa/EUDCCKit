Pod::Spec.new do |s|
  s.name                    = 'EUDCCKit'
  s.version                 = '0.0.1'
  s.summary                 = 'A Swift Package to decode, verify and validate EU Digital COVID Certificates for iOS, tvOS, watchOS and macOS'
  s.homepage                = 'https://github.com/fatalaa/EUDCCKit'
  s.license                 = { :file => 'LICENSE' }
  s.author                  = { 'Scandit' => 'support@scandit.com' }
  s.platforms               = { :ios => "12.0" }
  s.swift_version           = '5.3'
  
  s.subspec 'EUDCC' do |core|
    core.source_files = 'Sources/EUDCC/**/*.swift'
  end

  s.subspec 'EUDCCDecoder' do |decoder|
    decoder.source_files = 'Sources/EUDCCDecoder/**/*.swift'
    decoder.dependency 'EUDCCKit/EUDCC'
    decoder.dependency 'SWiftCBOR', '= 0.4.3'
  end

  s.subspec 'EUDCCValidator' do |validator|
    validator.source_files = 'Sources/EUDCCValidator/**/*.swift'
    validator.dependency 'EUDCCKit/EUDCC'
  end

  s.subspec 'EUDCCVerifier' do |verifier|
    verifier.source_files = 'Sources/EUDCCVerifier/**/*.swift'
    verifier.dependency 'EUDCCKit/EUDCC'
    verifier.dependency 'SWiftCBOR', '= 0.4.3'
  end

end
