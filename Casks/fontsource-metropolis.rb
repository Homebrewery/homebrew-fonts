cask "fontsource-metropolis" do
  version "5.2.5"
  sha256 :no_check

  domain = "fontsource.org"

  url "https://api.#{domain}/v1/download/metropolis"
  name "Metropolis"
  desc "Modern, geometric typeface by Chris Simpson"
  homepage "https://#{domain}/fonts/metropolis"

  livecheck do
    url "https://registry.npmjs.org/@fontsource/metropolis/-/"
    strategy :npm
  end

  staged_path.glob("ttf/*.ttf").each { font it, target: it.basename.to_s.capitalize }

  # No zap stanza required
end
