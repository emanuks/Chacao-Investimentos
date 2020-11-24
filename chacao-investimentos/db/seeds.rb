# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

AccountType.create(name: 'Conta Corrente')
User.create(cpf: '92482292042', email: 'admin@admin.com', password: '1234', is_admin: true)

# Renda Fixa
FixedIncome.create(category: "CDB", entity: "Daycoval Digital", due_date: 24, tax: 0.01, time_limit: "20:00", value: 75)
FixedIncome.create(category: "LCA", entity: "Itaú Legend FIC FI RF LP", due_date: 24, tax: 0.01, time_limit: "20:00", value: 100)
FixedIncome.create(category: "LCI", entity: "BB Pré IRF-M Priv FIC FI RF LP", due_date: 24, tax: 0.01, time_limit: "20:00", value: 325)
FixedIncome.create(category: "LF", entity: "Itaú FIC FI RF LP", due_date: 24, tax: 0.01, time_limit: "20:00", value: 110)
FixedIncome.create(category: "LC", entity: "Caixa Objetivo Pré FIC FI RF LP", due_date: 24, tax: 0.01, time_limit: "20:00", value: 600)


# Fundo de Investimento
InvestmentFund.create(category: "Cambial", redemption_period: "D + 4", name: "Daycoval Títulos Públicos III FIRF", value: 175)
InvestmentFund.create(category: "Multimercado", redemption_period: "D + 60", name: "Orama Ouro FIM", value: 1000)
InvestmentFund.create(category: "Cambial", redemption_period: "D + 1", name: "Trend Dólar FI Cambial", value: 700)
InvestmentFund.create(category: "Cambial", redemption_period: "D + 30", name: "Votorantim FIC de FI Cambial", value: 225)
InvestmentFund.create(category: "Cambial", redemption_period: "D + 30", name: "BTG Pactual Dólar FI Cambial", value: 500)

# Tesouro Direto
DirectTreasure.create(name: "Banco do Brasil", index: "IPCA", due_date: "2020-11-20", tax: 0.02, value: 20)
DirectTreasure.create(name: "XP", index: "SELIC", due_date: "2020-11-20", tax: 0.02, value: 12)
DirectTreasure.create(name: "Clear", index: "IPCA", due_date: "2020-11-20", tax: 0.02, value: 12)
DirectTreasure.create(name: "Warren", index: "Prefixado", due_date: "2020-11-20", tax: 0.02, value: 12)
DirectTreasure.create(name: "Orama", index: "SELIC", due_date: "2020-11-20", tax: 0.02, value: 12)

