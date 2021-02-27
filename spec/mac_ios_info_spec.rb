RSpec.describe MacIosInfo do
  it "has a version number" do
    expect(MacIosInfo::VERSION).not_to be nil
  end

  it "macOS Name" do
    expect(MacIosInfo.macos_version_to_os_name(version: "11.1.1")).to eq("macOS Big Sur")
    expect(MacIosInfo.macos_version_to_os_name(version: "10.15.4")).to eq("macOS Catalina")
    expect(MacIosInfo.macos_version_to_os_name(version: "10.14.4")).to eq("macOS Mojave")
    expect(MacIosInfo.macos_version_to_os_name(version: "10.13.4")).to eq("macOS High Sierra")
    expect(MacIosInfo.macos_version_to_os_name(version: "10.12.4")).to eq("macOS Sierra")
    expect(MacIosInfo.macos_version_to_os_name(version: "10.11.1")).to eq("UnKnown")
  end

  it "macOS Version" do
    expect(MacIosInfo.macos_build_to_macos_version(build_number: "20D64")).to eq("11.2")
  end
end
