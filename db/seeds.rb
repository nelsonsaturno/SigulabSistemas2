# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

## MONTO ASIGNADO SEED

montoAsignado = [
  ['Reformulacion 2013 al 2014', 274290.37 ],
  ['Presupuesto 2014', 130000 ],
  ['Inversion 2014', 270000],
  ['Donacion Ing. Quimica',  9936.5]
]

# explicitly define the date format using strptime
#Date.strptime("12/13/2013", "%m/%d/%Y")

gastos = [
  [ '20/06/2012', 'B038-2012', 'ANSYS, INC', 48375],
  [ '11/04/2013', 'B033-2013', 'FOE INCORPORATED', 54360],
  [ '21/11/2013', 'B082-2013', 'AGA GAS, C.A.', 5004.16],
  [ '04/04/2014', 'B030-2014', 'QUIMICOS LA BARRACA, C.A.', 12882.8] 
]

montoAsignado.each do |description, income|
  Transaction.create(description: description, income: income)
end

gastos.each do |date, outcome_code, recipient, outcome|
  Transaction.create( date: Date.strptime(date, "%d/%m/%Y"), outcome_code: outcome_code, recipient: recipient, outcome: outcome)
end