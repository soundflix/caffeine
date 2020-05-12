source 'https://github.com/CocoaPods/Specs.git'
platform :osx, '10.10'

target 'Caffeine' do
    pod 'Sentry', :git => 'https://github.com/getsentry/sentry-cocoa.git', :tag => '4.4.3'
    pod 'Countly', '~> 19.08'
end

plugin 'cocoapods-keys', {
  :project => "Caffeine",
  :target => "Caffeine",
  :keys => [
    "SentryDSN",
    "CountlyAppKey",
    "CountlyHost"
  ]
}
