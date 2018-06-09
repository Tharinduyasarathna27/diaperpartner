diaper_bank = DiaperBank.create(name: 'Sweet Cheeks')
user = User.create email: 'test@example.com', password: 'password', password_confirmation: 'password'
dbu = DiaperBankUser.create(diaper_bank: diaper_bank, user: user)

admin_user = User.create email: 'testadmin@example.com', password: 'password', password_confirmation: 'password', admin: true

