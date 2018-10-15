# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
  coupon = Coupon.create([{ coupon_code: 'Chicago Discount Code' }, { store: 'Copenhagen Deli' }])
  coupon = Coupon.create([{ coupon_code: 'Hot Code' }, { store: 'Hot Cup' }])
  # Mayor.create(name: 'Emanuel', city: cities.first)
