module NATO
  module Say
    def self.call(text)
      `say #{text}`
      nil
    end
  end
end
