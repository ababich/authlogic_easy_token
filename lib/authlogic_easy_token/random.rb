module AuthlogicEasyToken
  module Random
    extend self
    # defining easily readable token for SMS communication, etc.
    # uses digits and small letters for easier distinguishing letters from digits
    # see <authlogic> / lib / authlogic / random.rb for details

    # NOTE: 12/12/2009: ababich: we do NOT extend Authlogic::Random module
    # =>                         thats why our methods are accessible inside AuthlogicEasyToken only

    EASY_CHARS = ("a".."z").to_a + ("0".."9").to_a

    def easy_token
      token = ""
      10.times { token << EASY_CHARS.rand }
      token
    end
  end
end
