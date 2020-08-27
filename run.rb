require_relative './lib/customer'
require_relative './lib/meal'
require_relative './lib/waiter'

require 'pry'


terrance = Customer.new("Terrance", 27)
jason = Waiter.new("Jason", 4)
andrew = Waiter.new("Andrew", 7)
yomi = Waiter.new("Yomi", 10)


binding.pry