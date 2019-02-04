# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'


# Party.create(
#   party_type: 'ORG',
#   name: 'Round One'
# )
#
# 2.times do Party.create(
#   party_type: 'ORG',
#   name: Faker::Company.name
# )
#   end
# puts "2 ORG parties created"
#
# 2.times do Party.create(
#   party_type: 'PER',
#   last_name: Faker::Name.last_name,
#   first_name: Faker::Name.first_name
# )
# end
#
# puts "2 PER parties created"
#
# #**** Tipo de cuentas ****
#
activo = AccountType.create(
  acc_type_code: 'Activo',
  classification: 'Balance'
)
#
pasivo = AccountType.create(
  acc_type_code: 'Pasivo',
  classification: 'Balance'
)

capital = AccountType.create(
  acc_type_code: 'Capital',
  classification: 'Balance'
)

ingreso = AccountType.create(
  acc_type_code: 'Ingreso',
  classification: 'Perdidas o Ganacias'
)

gasto = AccountType.create(
  acc_type_code: 'Gasto',
  classification: 'Perdidas o Ganacias'
)
# #
# # puts "5 GlAccountType created"
# # #
 activo = AccountType.find_by(acc_type_code: 'Activo')
 pasivo = AccountType.find_by(acc_type_code: 'Pasivo')
 capital = AccountType.find_by(acc_type_code: 'Capital')
 gasto = AccountType.find_by(acc_type_code: 'Gasto')
 ingreso = AccountType.find_by(acc_type_code: 'Ingreso')
#
#
# #*** Cuentas de Activo Corriente ****
#
# activo.gl_accounts.create(
#  acc_code: '1',
#  acc_parent_code: nil,
#  name: 'Activos',
#  description: 'Valores disponibles,activos de la empresa'
# )
#
# activo.gl_accounts.create(
#  acc_code: '1000',
#  acc_parent_code: '1',
#  name: 'Activos Corrientes',
#  description: 'Valores disponibles,activos de la empresa'
# )
# activo.gl_accounts.create(
#   acc_code: '1010',
#   acc_parent_code: '1000',
#   name: 'Caja',
#   description: 'Dinero en caja'
# )
#
# activo.gl_accounts.create(
#   acc_code: '1011',
#   acc_parent_code: '1010',
#   name: 'Caja Chica',
#   description: 'Dinero en caja chica'
# )
#
#
# activo.gl_accounts.create(
#   acc_code: '1020',
#   acc_parent_code: '1000',
#   name: 'Bancos',
#   description: 'Cuentas de Bancos'
# )
#
# activo.gl_accounts.create(
#   acc_code: '1021',
#   acc_parent_code: '1020',
#   name: 'Banco Bolivariano',
#   description: 'Cta  cte de Banco No. 023456'
# )
#
# activo.gl_accounts.create(
#   acc_code: '1022',
#   acc_parent_code: '1020',
#   name: 'Banco Bolivariano',
#   description: 'Cta de Ahorro No. 023456'
# )
#
# activo.gl_accounts.create(
#   acc_code: '1400',
#   acc_parent_code: '1000',
#   name: 'Inventario',
#   description: 'Inventarios de productos y servicios'
# )
#
# activo.gl_accounts.create(
#   acc_code: '1410',
#   acc_parent_code: '1400',
#   name: 'Inventario Membresías',
#   description: 'Inventario de membresías'
# )
#
# activo.gl_accounts.create(
#   acc_code: '1420',
#   acc_parent_code: '1400',
#   name: 'Inventario de Productos',
#   description: 'Inventario de productos'
# )
#
# activo.gl_accounts.create(
#   acc_code: '1200',
#   acc_parent_code: '1000',
#   name: 'Cuentas por Cobrar',
#   description: 'Cuentas por cobrar'
# )
#
# activo.gl_accounts.create(
#   acc_code: '1500',
#   acc_parent_code: '1000',
#   name: 'Activos No Corrientes',
#   description: 'Activos No realizables de inmediato'
# )
#
# activo.gl_accounts.create(
#   acc_code: '1510',
#   acc_parent_code: '1500',
#   name: 'Anticipos',
#   description: 'Anticipos y depósitos pagados por anticipado'
# )
#
# activo.gl_accounts.create(
#   acc_code: '1520',
#   acc_parent_code: '1000',
#   name: 'Equipos y Maquinarias',
#   description: 'Equipos para la operación'
# )
#
# activo.gl_accounts.create(
#   acc_code: '1540',
#   acc_parent_code: '1000',
#   name: 'Instalaciones',
#   description: 'Instalaciones y adecuaciones'
# )
#
#  puts "#{GlAccount.where(account_type_id: activo.id).count} Cuentas de Balance-Activo creadas"
#
#  pasivo.gl_accounts.create(
#    acc_code: '2',
#    acc_parent_code: nil,
#    name: 'Pasivos Corrientes',
#    description: 'Valores que se deben'
#  )
#
# pasivo.gl_accounts.create(
#   acc_code: '2000',
#   acc_parent_code: '2',
#   name: 'Pasivos Corrientes',
#   description: 'Valores que se deben'
# )
#
# pasivo.gl_accounts.create(
#   acc_code: '2100',
#   acc_parent_code: '2000',
#   name: 'Cuentas por Pagar',
#   description: 'Valores que se deben pagar en el corto plazo'
# )
#
# pasivo.gl_accounts.create(
#   acc_code: '2101',
#   acc_parent_code: '2100',
#   name: 'Beneficios Empleados',
#   description: 'Valores que se deben a empleados'
# )
#
# pasivo.gl_accounts.create(
#   acc_code: '2102',
#   acc_parent_code: '2100',
#   name: 'Seguridad Social',
#   description: 'Valores que se debe al seguro social'
# )
# puts "#{GlAccount.where(account_type_id: pasivo.id).count} Cuentas del Pasivo creadas"
#
# #**** Cuentas de Capital ***
#
# capital.gl_accounts.create(
#   acc_code: '3',
#   acc_parent_code: nil,
#   name: 'Capital ',
#   description: 'Valores para iniciar el negocio'
# )
#
# capital.gl_accounts.create(
#   acc_code: '3000',
#   acc_parent_code: '3',
#   name: 'Capital Social ',
#   description: 'Cuentas de Capital Social'
# )
#
# capital.gl_accounts.create(
#   acc_code: '3010',
#   acc_parent_code: '3000',
#   name: 'Aportes de Accionistas ',
#   description: 'Cuentas de aporte de socios'
# )
# capital.gl_accounts.create(
#   acc_code: '3020',
#   acc_parent_code: '3000',
#   name: 'Contra Capital ',
#   description: 'Deuda de socios de capital '
# )

capital.gl_accounts.create(
  acc_code: '3030',
  acc_parent_code: '3000',
  name: 'Utilidades Retenidas',
  description: 'Utilidades retenidas para reinversión'
)

puts "Cuentas de Capital creadas"

#**** Cuentas de Ingreso ****
ingreso.gl_accounts.create(
  acc_code: '4',
  acc_parent_code: nil,
  name: 'Ingresos',
  description: 'Ingresos'
)

ingreso.gl_accounts.create(
  acc_code: '4000',
  acc_parent_code: '4',
  name: 'Ingresos Varios',
  description: 'Ingresos'
)

ingreso.gl_accounts.create(
  acc_code: '4010',
  acc_parent_code: '4000',
  name: 'Venta de Membresías',
  description: 'Ingresos obtenidos de las ventas de membresía'
)

ingreso.gl_accounts.create(
  acc_code: '4020',
  acc_parent_code: '4000',
  name: 'Venta de Servicios',
  description: 'Venta de servicios'
)

ingreso.gl_accounts.create(
  acc_code: '4030',
  acc_parent_code: '4000',
  name: 'Ingresos por Publicidad',
  description: 'Venta de publicidad'
)
puts "Cuentas de Ingreso creadas"

##**** Cuentas de Gasto ****

gasto.gl_accounts.create(
  acc_code: '5',
  acc_parent_code: nil,
  name: 'Gastos',
  description: 'Gastos Operacionales'
)

gasto.gl_accounts.create(
  acc_code: '5000',
  acc_parent_code: '5',
  name: 'Gastos de Operación',
  description: 'Gastos Operacionales'
)

gasto.gl_accounts.create(
  acc_code: '5005',
  acc_parent_code: '5000',
  name: 'Comisiones por Ventas',
  description: 'Comisiones pagadas'
 )

gasto.gl_accounts.create(
  acc_code: '5010',
  acc_parent_code: '5000',
  name: 'Promoción de Ventas',
  description: 'Costo de promociones'
 )

gasto.gl_accounts.create(
  acc_code: '5020',
  acc_parent_code: '5000',
  name: 'Publicidad',
  description: 'Costo de publicidad'
)

gasto.gl_accounts.create(
  acc_code: '5040',
  acc_parent_code: '5000',
  name: 'Gasto de Mercadeo',
  description: 'Costo de marketing'
)

gasto.gl_accounts.create(
  acc_code: '5200',
  acc_parent_code: '5000',
  name: 'Rol de Pagos',
  description: 'Pagos de roles'
)

gasto.gl_accounts.create(
  acc_code: '5210',
  acc_parent_code: '5000',
  name: 'Labores Contratadas',
  description: 'Labores externas contratadas'
)

gasto.gl_accounts.create(
  acc_code: '5280',
  acc_parent_code: '5000',
  name: 'Alquiler',
  description: 'Alquiler'
)

gasto.gl_accounts.create(
  acc_code: '5281',
  acc_parent_code: '5000',
  name: 'Pago Alícuota',
  description: 'Alquiler'
)

gasto.gl_accounts.create(
  acc_code: '5300',
  acc_parent_code: '5000',
  name: 'Empresas de Servicios',
  description: 'Costo de servicios elec. tel y agua'
)
gasto.gl_accounts.create(
  acc_code: '5310',
  acc_parent_code: '5300',
  name: 'Gasto de Agua',
  description: 'Costo de servicios  agua'
)

gasto.gl_accounts.create(
  acc_code: '5320',
  acc_parent_code: '5300',
  name: 'Gasto de Electricidad',
  description: 'Costo de servicios  energía eléctrica'
)

gasto.gl_accounts.create(
  acc_code: '5390',
  acc_parent_code: '5300',
  name: 'Servicios Profesionales',
  description: 'Servicios profesionales'
)
puts "Cuentas de Gasto creadas"
#
#
# #**** Tipo de Transacciones  ****
#
# AccountingTransactionType.create(
#   transaction_type_code: 'Venta',
#   description: 'Venta de membresías o productos'
# )
#
# AccountingTransactionType.create(
#   transaction_type_code: 'Pago',
#   description: 'Pago contra caja o con cheque'
# )
#
# AccountingTransactionType.create(
#   transaction_type_code: 'Transferencia Externa',
#   description: 'Transferencias entre ctas externas o internas a externas'
# )
# puts "Trasaction Types created"
#
# #**** Transacciones ****
#
# AccountingTransaction.create(
#   transaction_date:Time.now,
#   entry_date: Time.now,
#   description: 'Venta de membresía',
#   transaction_type_code: 'Venta',
#   to_party_id: 1,
#   from_party_id: 4,
#   from_org_party_id: nil
# )
#
# TransactionDetail.create(
#   detail_seq: 1,
#   amount: 6500,
#   debit_credit_flag: 'Debit',
#   party_id: 1,
#   gl_account_id: 17,
#   parent_transaction_id: 1,
#   parent_detail_seq: nil
# )
#
# TransactionDetail.create(
#   detail_seq: 2,
#   amount: 6500,
#   debit_credit_flag: 'Credit',
#   party_id: 1,
#   gl_account_id: 2,
#   parent_transaction_id: 1,
#   parent_detail_seq: 1
# )
#
# AccountingTransaction.create(
#   transaction_date:Time.now,
#   entry_date: Time.now,
#   description: 'Transferencia a Banco Bolivariano Cta. Cte. 023456',
#   transaction_type_code: 'Transferencia Externa',
#   to_party_id: 2,
#   from_party_id: nil,
#   from_org_party_id: 1
# )
#
# TransactionDetail.create(
#   detail_seq: 1,
#   amount: 6500,
#   debit_credit_flag: 'Debit',
#   party_id: 1,
#   gl_account_id: 2,
#   parent_transaction_id: 2,
#   parent_detail_seq: 1
# )
#
# TransactionDetail.create(
#   detail_seq: 2,
#   amount: 6500,
#   debit_credit_flag: 'Credit',
#   party_id: 1,
#   gl_account_id: 4,
#   parent_transaction_id: 2,
#   parent_detail_seq: 2
# )
# puts " 2 transactions and details created"
#
# #**** Account Groups ****
#
# GlAccountGroup.create(
#   account_group_name: 'Caja',
#   first_code: '1010',
#   last_code: '1020'
# )
# GlAccountGroup.create(
#   account_group_name: 'Bancos',
#   first_code: '1020',
#   last_code: '1030'
# )
#
# GlAccountGroup.create(
#   account_group_name: 'Cuentas por Cobrar',
#   first_code: '1200',
#   last_code: '1300'
# )
#
# GlAccountGroup.create(
#   account_group_name: 'Inventario',
#   first_code: '1400',
#   last_code: '1500'
# )
#
# GlAccountGroup.create(
#   account_group_name: 'Anticipos Pagados',
#   first_code: '1510',
#   last_code: '1520'
# )
#
# GlAccountGroup.create(
#   account_group_name: 'Equipos y Maquinarias',
#   first_code: '1520',
#   last_code: '1540'
# )
#
# GlAccountGroup.create(
#   account_group_name: 'Instalaciones',
#   first_code: '1540',
#   last_code: '1600'
# )
#
# GlAccountGroup.create(
#   account_group_name: 'Cuentas Por Pagar',
#   first_code: '2100',
#   last_code: '2200'
# )
#
# GlAccountGroup.create(
#   account_group_name: 'Aporte de Socios',
#   first_code: '3010',
#   last_code: '3030'
# )
#
# GlAccountGroup.create(
#   account_group_name: 'Inventario',
#   first_code: '1200',
#   last_code: '1500'
# )
#
# puts " Created Gl Account Groups"
