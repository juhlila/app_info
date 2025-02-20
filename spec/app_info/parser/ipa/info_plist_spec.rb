describe AppInfo::Parser::InfoPlist do
  let(:file) { File.dirname(__FILE__) + '/../../../fixtures/apps/iphone.ipa' }
  let(:ipa) { AppInfo::Parser::IPA.new(file) }
  subject { AppInfo::Parser::InfoPlist.new(ipa.app_path) }

  it { expect(subject.build_version).to eq('5') }
  it { expect(subject.release_version).to eq('1.2.3') }
  it { expect(subject.name).to eq('AppInfoDemo') }
  it { expect(subject.bundle_name).to eq('AppInfoDemo') }
  it { expect(subject.display_name).to be_nil }
  it { expect(subject.identifier).to eq('com.icyleaf.AppInfoDemo') }
  it { expect(subject.bundle_id).to eq('com.icyleaf.AppInfoDemo') }
  it { expect(subject.device_type).to eq('iPhone') }
  it { expect(subject.min_sdk_version).to eq('9.3') }
  it { expect(subject.info).to be_kind_of Hash }
end
