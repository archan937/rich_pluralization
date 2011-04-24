require "rubygems"
require "gem_suit"

class SuitApplication < GemSuit::Application

  def locals_for_template(path)
    case path
    when "Gemfile"
      {:rails_gem_version => rails_version == 2 ? "2.3.11" : "3.0.6",
       :i18n_version      => rails_version == 2 ? "0.4.2"  : "0.5.0"}
    end
  end

end