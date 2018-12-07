require 'yaml'

module Dialable
  module AreaCodes

    def self.datadir
      datadir = File.join(File.dirname(__FILE__), '..', '..', 'data', 'dialable')

      if ! File.directory?(datadir)
        fail "Can't find the datadir: File.join(#{File.dirname(__FILE__)}, '..', '..', 'data', 'dialable')}."
      end

      datadir
    end

    # Valid area codes per nanpa.com
    NANP = YAML.load_file(File.join(datadir, 'nanpa.yaml'))

  end
end
