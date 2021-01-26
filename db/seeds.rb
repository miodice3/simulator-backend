# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

appliance_lamp = Appliance.create(name: "Table Lamp", status: "off", url_on: "off", url_off: "off")
appliance_dishwasher = Appliance.create(name: "Dishwasher", status: "off", url_on: "off", url_off: "off")
appliance_ev = Appliance.create(name: "EV", status: "off", url_on: "off", url_off: "off")
appliance_dryer = Appliance.create(name: "Dryer", status: "off", url_on: "off", url_off: "off")

Schedule.create(appliance: appliance_lamp, day: "Weekday", time_on: "17:00", time_off: "22:00", set_point: 0)
Schedule.create(appliance: appliance_lamp, day: "Weekend", time_on: "12:00", time_off: "22:00", set_point: 0)

Schedule.create(appliance: appliance_dishwasher, day: "Weekday", time_on: "12:00", time_off: "13:30", set_point: 0)
Schedule.create(appliance: appliance_dishwasher, day: "Weekend", time_on: "16:00", time_off: "17:30", set_point: 0)

Schedule.create(appliance: appliance_ev, day: "Weekday", time_on: "17:00", time_off: "22:00", set_point: 0)
Schedule.create(appliance: appliance_ev, day: "Weekend", time_on: "1:00", time_off: "7:00", set_point: 0)

Schedule.create(appliance: appliance_dryer, day: "Weekday", time_on: "17:00", time_off: "18:00", set_point: 0)
Schedule.create(appliance: appliance_dryer, day: "Weekend", time_on: "12:00", time_off: "13:00", set_point: 0)