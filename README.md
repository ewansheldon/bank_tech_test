# Bank Tech Test

##### Response to a mock tech test with the briefing of building a bank account system, with the following requirements:

- You should be able to interact with the your code via IRB. (You don't need to implement a command line interface that takes input from STDIN.)

- Deposits, withdrawal.

- Account statement (date, amount, balance) printing.

- Data can be kept in memory (it doesn't need to be stored to a database or anything).

### Class structure:

- Account: Knows how to maintain balance, as well as instantiating transactions

- Transaction History: knows how to record all transactions and format the display of the history to output

- Transaction: Knows its amount and the time of the transaction

##### To test the functionality:

- Run `git clone git@github.com:ewansheldon/bank_tech_test.git` on your command line
- Change into the directory and run `rspec`
- Feature test by instantiating accounts and making transactions in `irb` - e.g. `account = Account.new`, `account.withdraw(30)`, `account.deposit(50)`
