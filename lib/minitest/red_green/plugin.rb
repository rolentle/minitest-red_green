module Minitest
  module RedGreen
    class Plugin
      attr_accessor :sync

      ESC = "\e["

      def initialize io
        @io = io
      end

      def external_encoding
        @io.external_encoding
      end

      def puts *strings
        if not strings.grep(%r{\d+\) (?:Failure|Error)}).empty?
          strings.map! &method(:red)
        end
        @io.puts *strings
      end

      def print str
        @io.print filter_test_output_chars str
      end

      def filter_test_output_chars str
        case str
        when '.' then green str
        when 'E', 'F' then red str
        when 'S' then yellow str
        else str
        end
      end

      def green str
        colorize str, 32
      end

      def red str
        colorize str, 31
      end

      def yellow str
        colorize str, 33
      end

      def colorize str, col_code
        "#{ESC}#{col_code}m#{str}#{ESC}0m"
      end
    end
  end
end
