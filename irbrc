require 'rubygems'
require 'pp'
require 'ap'
require 'wirble'
require 'looksee'

Wirble.init
Wirble.colorize

class Object
  def _methods
    (self.methods - Object.instance_methods).sort
  end

  def _which_method(method_name)
    self.method(method_name.to_sym)
  end
end
