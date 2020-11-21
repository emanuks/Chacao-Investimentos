# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

AccountType.create(name: 'Conta Corrente')
User.create(cpf: '92482292042', email: 'admin@admin.com', password: '1234')

# Renda Fixa
FixedIncome.create(category: "CDB", entity: "Daycoval Digital", due_date: 24, tax: 0.01, time_limit: "20:00", value: 75)

# Fundo de Investimento
InvestmentFund.create(category: "Cambial", redemption_period: "D + 4", name: "Daycoval Títulos Públicos III FIRF", value: 25)

# Tesouro Direto
DirectTreasure.create(name: "Banco do Brasil", index: "IPCA", due_date: "2020-11-20", tax: 0.02, value: 20)