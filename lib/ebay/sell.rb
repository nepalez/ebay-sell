require "evil-client"
require "dry-types"

module Ebay
  class Sell
    extend Evil::Client::DSL

    settings do
    end
  end
end
