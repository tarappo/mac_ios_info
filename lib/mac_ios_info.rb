require "mac_ios_info/version"

module MacIosInfo
  class Error < StandardError; end

  # Change macOS build number to macOS version
  # @param build_number macOS Build Number
  # @return macOS version(High Sierra or higher)
  def self.macos_build_to_macos_version(build_number:)
    case build_number
      # macOS Big Sur
    when "20D80" then
      "11.2.2"
    when "20D74", "20D75" then
      "11.2.1"
    when "20D64" then
      "11.2"
    when "20C69" then
      "11.1"
    when "20B29", "20B50" then
      "11.0.1"
    when "20A2411" then
      "11.0.0"
      # macOS Catalina
    when "19H2", "19H15" then
      "10.15.7"
    when "19G73", "19G2021" then
      "10.15.6"
    when "19F101", "19F96" then
      "10.15.5"
    when "19E266" then
      "10.15.4"
    when "19D76" then
      "10.15.3"
    when "19C57" then
      "10.15.2"
    when "19B88" then
      "10.15.1"
    when "19A583", "19A602", "19A603" then
      "10.15"
      # macOS Mojave
    when "18G84", "18G103", "18G1012", "18G95" then
      "10.14.6"
    when "18F132", "18F203" then
      "10.14.5"
    when "18E226", "18E227" then
      "10.14.4"
    when "18D42", "18D43", "18D109" then
      "10.14.3"
    when "18C54" then
      "10.14.2"
    when "18B75", "18B2107", "18B3094" then
      "10.14.1"
    when "18A391" then
      "10.14"
      # macOS High Sierra
    when "17G65", "17G6029" then
      "10.13.6"
    when "17F77" then
      "10.13.5"
    when "17E199", "17E201", "17E202" then
      "10.13.4"
    when "17D47", "17D102", "17D2047", "17D2102" then
      "10.13.3"
    when "17C88", "17C89", "17C205", "17C2205" then
      "10.13.2"
    when "17B48", "17B1002", "17B1003" then
      "10.13.1"
    when "17A365", "17A405" then
      "10.13"
    else
      "UnKnown"
    end
  end

  # Change version to macOS Name
  # @param version (e.g. 10.15.7)
  # @return macOS Name
  def self.macos_version_to_os_name(version:)
    major_version = version.split(".")[0].to_i
    minor_version = version.split(".")[1].to_i
    # reference https://support.apple.com/ja-jp/HT201260
    case major_version
    when 11
      return  "macOS Big Sur"
    end

    case minor_version
    when 15
      "macOS Catalina"
    when 14
      "macOS Mojave"
    when 13
      "macOS High Sierra"
    when 12
      "macOS Sierra"
    else
      "UnKnown"
    end
  end
end
