require "os"

module NATO
  module Say
    def self.call(text)
      if OS.linux?
        `echo "#{text}" | espeak`
      elsif OS.mac?
        `say #{text}`
      elsif OS.windows?
        fail NotImplementedError
      end

      nil
    end
  end
end
