#!/usr/bin/env ruby

require 'tk'

hello = TkRoot.new
TkLabel.new(hello) do
  text "\n Ruby is awesome \n"
  pack
end
Tk.mainloop
