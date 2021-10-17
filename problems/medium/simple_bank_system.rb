class Bank
  def initialize(balance)
    @balance = balance
  end

  def transfer(account1, account2, money)
    return false if account1 > @balance.length || account2 > @balance.length
    return false if @balance[account1 - 1] < money

    @balance[account1 - 1] -= money
    @balance[account2 - 1] += money
    true
  end

  def deposit(account, money)
    return false if account > @balance.length

    @balance[account - 1] += money
    true
  end

  def withdraw(account, money)
    return false if account > @balance.length
    return false if @balance[account - 1] < money

    @balance[account - 1] -= money
    true
  end
end
