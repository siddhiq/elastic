# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Project.create(name: 'eSTA', username:'vignesh')
Project.create(name: 'AMS (Aditya Manager System)', username:'dinup')
Project.create(name: 'Optra', username:'Aditya')
Project.create(name: 'HCV (Human Computer Visualization)', username:'dinup')
Project.create(name: 'DT 2.0 Deploy Test New', username:'vignesh')
Project.create(name: 'DT 2.0 Deploy Test Old', username:'vignesh')
Project.create(name: 'Low Speed', username:'Akhila Krishnamurthy')

Program.create(name: 'eSTA', username:'vignesh')
Program.create(name: 'AMS (Aditya Manager System)', username:'dinup')
Program.create(name: 'Optra', username:'Aditya')
Program.create(name: 'HCV (Human Computer Visualization)', username:'dinup')
Program.create(name: 'DT 2.0 Deploy Test New', username:'vignesh')
Program.create(name: 'DT 2.0 Deploy Test Old', username:'vignesh')
Program.create(name: 'Low Speed', username:'Akhila Krishnamurthy')


User.create(name: 'Vignesh Raju', username: 'vignesh')
User.create(name: 'Dinup Vishal', username: 'vignesh')
User.create(name: 'Akhila Krishnamurthy', username: 'Akhila')
User.create(name: 'Udhayaraj', username: 'Udhay')
User.create(name: 'Aditya Kashyap singh', username: 'Aditya')