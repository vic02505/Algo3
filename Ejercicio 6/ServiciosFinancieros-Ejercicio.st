!classDefinition: #ReceptiveAccountTest category: 'ServiciosFinancieros-Ejercicio'!
TestCase subclass: #ReceptiveAccountTest
	instanceVariableNames: 'accountA1 accountB1 portfolio1 portfolioOfPortfolios1 anTransaference'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ServiciosFinancieros-Ejercicio'!
!ReceptiveAccountTest commentStamp: 'VZ 6/5/2022 15:17:24' prior: 0!
test16

|portfolio accountA accountB|
	
	accountA := ReceptiveAccount new.
	
	accountB := ReceptiveAccount new.
	Deposit register: 50*peso on: accountB.
	
	
	portfolio  := Portfolio new.
	portfolio addAccount: accountA.
	portfolio addAccount: accountB.
	
	self assert: (portfolio transactionsOfAccountNumber: 2) size equals: accountB transactions size.
!


!ReceptiveAccountTest methodsFor: 'Tests - G19 team' stamp: 'VZ 6/8/2022 19:23:47'!
test08TheTransferenceBetweenTwoAccountsWorksSuccessfully
		
	Deposit register: 100*peso  on: accountA1.
	 	
	anTransaference doTransferenceFromTheAccount: accountA1 forTheMoneyAmount: 50*peso  toTheAccount: accountB1.
	
	self assert: accountA1 balance  equals: 50*peso.
	self assert:  accountB1 balance equals: 50*peso.
	
	! !

!ReceptiveAccountTest methodsFor: 'Tests - G19 team' stamp: 'VZ 6/8/2022 19:26:28'!
test09OnATransferenceTheWithdrawFootKnowWhatIsTheAmountPerDeposit
		
	Deposit register: 100*peso  on: accountA1.
		
	anTransaference doTransferenceFromTheAccount: accountA1 forTheMoneyAmount: 50*peso  toTheAccount: accountB1.
	
	self assert: anTransaference withdrawFoot class equals: (accountB1 transactions last) class.
	self assert: anTransaference withdrawFoot value equals: (accountB1 transactions last)  value.
	
	
	
	
	
	
	
	! !

!ReceptiveAccountTest methodsFor: 'Tests - G19 team' stamp: 'VZ 6/8/2022 19:27:33'!
test10OnATransferenceTheDepositFootKnowsWhatIsTheAmountPerWithdraw
	
	Deposit register: 100*peso  on: accountA1.
	
	anTransaference doTransferenceFromTheAccount: accountA1 forTheMoneyAmount: 50*peso  toTheAccount: accountB1.
	
	self assert: anTransaference depositFoot class equals: (accountA1 transactions last) class.
	self assert: anTransaference depositFoot value equals: (accountA1 transactions last)  value.
! !

!ReceptiveAccountTest methodsFor: 'Tests - G19 team' stamp: 'VZ 6/5/2022 14:14:39'!
test11AnEmptyPortfolioHas0OfBalance

	self assert: (Portfolio new) balance equals: 0.
	
	! !

!ReceptiveAccountTest methodsFor: 'Tests - G19 team' stamp: 'VZ 6/8/2022 19:33:21'!
test12AnEmptyPorfolioCanNotHaveRegisteredTransactions
	
	|aDeposit|
	aDeposit := Deposit new.
	
	self deny: (portfolio1 registerAnTransaction: 	aDeposit).
	
	! !

!ReceptiveAccountTest methodsFor: 'Tests - G19 team' stamp: 'VZ 6/8/2022 19:30:45'!
test13AnEmptyPortfolioCanNotGiveTheTransactionsOfAnAccount

	
	self should: [portfolio1 transactions]  
	raise: Error  
	withExceptionDo: [:anError| self assert: anError messageText equals: Portfolio emptyPortfolioErrorMessage]. ! !

!ReceptiveAccountTest methodsFor: 'Tests - G19 team' stamp: 'VZ 6/8/2022 19:34:16'!
test14AnPorfolioWithTwoAccountsWith50PesosHas100PesosOfBalance
			
	Deposit register: 50*peso on: accountA1.
	Deposit register: 50*peso on: accountB1.

	portfolio1 add: accountA1.
	portfolio1 add: accountB1.
		
	self assert: (portfolio1 balance) equals: 100*peso.! !

!ReceptiveAccountTest methodsFor: 'Tests - G19 team' stamp: 'VZ 6/8/2022 19:34:53'!
test15AnPortfolioWithAccountsWithTransactionsHavesRegisteredTransactions
	
	|aDeposit|
	
	aDeposit := Deposit register: 50*peso on: accountA1.
		
	portfolio1 add: accountA1.
	
	self assert: (portfolio1 registerAnTransaction: aDeposit).
! !

!ReceptiveAccountTest methodsFor: 'Tests - G19 team' stamp: 'VZ 6/8/2022 19:35:31'!
test16AnPortfolioWithAccountsCanGiveTheTransactionsOfAnAccount
	
	Deposit register: 50*peso on: accountB1.
	
	portfolio1 add: accountA1.
	portfolio1 add: accountB1.
	
	self assert: ((portfolio1 transactions) at: 1) value equals: 50*peso.

	! !

!ReceptiveAccountTest methodsFor: 'Tests - G19 team' stamp: 'VZ 6/8/2022 19:36:03'!
test17AnEmptyPortfolioWithPortofliosHas0OfBalance
	
	portfolio1 add: portfolioOfPortfolios1.
	
	self assert: portfolio1 balance equals: 0.! !

!ReceptiveAccountTest methodsFor: 'Tests - G19 team' stamp: 'VZ 6/8/2022 19:37:23'!
test18AnPortfolioWithAnPortfolioWith50PesosOfBalanceHave50PesosOfBalance

	Deposit register: 50*peso on: accountA1.
	
	portfolio1 add:  accountA1.
	portfolioOfPortfolios1  add: portfolio1.
	
	self assert: portfolioOfPortfolios1 balance equals: 50*peso.
	! !

!ReceptiveAccountTest methodsFor: 'Tests - G19 team' stamp: 'VZ 6/8/2022 19:38:48'!
test19APortfolioWithTransactionsRegisterAnTransaction
	
	|anDeposit|
	
	anDeposit := Deposit register: 50*peso on: accountA1 .
	
	portfolio1 add:  accountA1 .
	portfolioOfPortfolios1  add: portfolio1.
	
	self assert: (portfolioOfPortfolios1  registerAnTransaction: anDeposit).! !

!ReceptiveAccountTest methodsFor: 'Tests - G19 team' stamp: 'VZ 6/8/2022 19:40:13'!
test20AnPortfolioWithPortfolioCanGiveTheTotalTransactions

	Deposit register: 50*peso on: accountA1.
	
	portfolio1 add:  accountA1.
	portfolioOfPortfolios1  add: portfolio1.
	
	self assert: ((portfolioOfPortfolios1 transactions) at: 1) value equals: 50*peso.
	
	
	
! !


!ReceptiveAccountTest methodsFor: 'Test - initialization' stamp: 'VZ 6/8/2022 19:24:00'!
setUp
	
	accountA1 := ReceptiveAccount new.
	accountB1  := ReceptiveAccount  new.
	portfolio1  := Portfolio new.
	portfolioOfPortfolios1  := Portfolio new.
	anTransaference := Transference new.! !


!ReceptiveAccountTest methodsFor: 'Tests - Algo3 team' stamp: 'VZ 6/8/2022 19:16:51'!
test01ReceptiveAccountHaveZeroAsBalanceWhenCreated 

	self assert: 0 equals: accountA1 balance
! !

!ReceptiveAccountTest methodsFor: 'Tests - Algo3 team' stamp: 'VZ 6/8/2022 19:17:19'!
test02DepositIncreasesBalanceOnTransactionValue 
	
	Deposit register: 100 * peso on: accountA1.
		
	self assert: 100 * peso equals: accountA1 balance.
! !

!ReceptiveAccountTest methodsFor: 'Tests - Algo3 team' stamp: 'VZ 6/8/2022 19:19:26'!
test03WithdrawDecreasesBalanceOnTransactionValue 

	Deposit register: 100 * peso on: accountA1.
	Withdraw register: 50 * peso on: accountA1.		
		
	self assert: 50 * peso equals: accountA1 balance.
! !

!ReceptiveAccountTest methodsFor: 'Tests - Algo3 team' stamp: 'VZ 6/8/2022 19:20:10'!
test04WithdrawValueMustBePositive 

	|withdrawValue |
	withdrawValue := 50 * peso.
	
	self assert: withdrawValue equals: (Withdraw register: withdrawValue on: accountA1 ) value
! !

!ReceptiveAccountTest methodsFor: 'Tests - Algo3 team' stamp: 'VZ 6/8/2022 19:20:58'!
test05ReceptiveAccountKnowsRegisteredTransactions 

	|deposit withdraw |
	
	deposit := Deposit register: 100 * peso on: accountA1 .
	withdraw := Withdraw register: 50 * peso on: accountA1 .
		
	self assert: (accountA1 hasRegistered: deposit).
	self assert: (accountA1 hasRegistered: withdraw).
! !

!ReceptiveAccountTest methodsFor: 'Tests - Algo3 team' stamp: 'VZ 6/8/2022 19:21:35'!
test06ReceptiveAccountDoNotKnowNotRegisteredTransactions

	| deposit withdraw |
	
	deposit :=  Deposit for: 100 * peso.
	withdraw := Withdraw for: 50 * peso.
		
	self deny: (accountA1 hasRegistered: deposit).
	self deny: (accountA1 hasRegistered: withdraw).
! !

!ReceptiveAccountTest methodsFor: 'Tests - Algo3 team' stamp: 'VZ 6/8/2022 19:22:07'!
test07AccountKnowsItsTransactions 

	|deposit |
		
	deposit := Deposit register: 50 * peso on: accountA1.
		
	self assert: 1 equals: accountA1 transactions size.
	self assert: (accountA1 transactions includes: deposit).
! !


!classDefinition: #AccountTransaction category: 'ServiciosFinancieros-Ejercicio'!
Object subclass: #AccountTransaction
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ServiciosFinancieros-Ejercicio'!

!AccountTransaction methodsFor: 'value' stamp: 'HernanWilkinson 9/12/2011 12:25'!
value 

	self subclassResponsibility ! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'AccountTransaction class' category: 'ServiciosFinancieros-Ejercicio'!
AccountTransaction class
	instanceVariableNames: ''!

!AccountTransaction class methodsFor: 'instance creation' stamp: 'NR 10/17/2019 03:22:00'!
register: aValue on: account

	| transaction |
	
	transaction := self for: aValue.
	account register: transaction.
		
	^ transaction! !


!classDefinition: #Deposit category: 'ServiciosFinancieros-Ejercicio'!
AccountTransaction subclass: #Deposit
	instanceVariableNames: 'value'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ServiciosFinancieros-Ejercicio'!

!Deposit methodsFor: 'initialization' stamp: 'HernanWilkinson 7/13/2011 18:45'!
initializeFor: aValue

	value := aValue ! !


!Deposit methodsFor: 'value' stamp: 'HernanWilkinson 7/13/2011 18:38'!
value

	^ value! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Deposit class' category: 'ServiciosFinancieros-Ejercicio'!
Deposit class
	instanceVariableNames: ''!

!Deposit class methodsFor: 'instance creation' stamp: 'HernanWilkinson 7/13/2011 18:38'!
for: aValue

	^ self new initializeFor: aValue ! !


!classDefinition: #Withdraw category: 'ServiciosFinancieros-Ejercicio'!
AccountTransaction subclass: #Withdraw
	instanceVariableNames: 'value'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ServiciosFinancieros-Ejercicio'!

!Withdraw methodsFor: 'initialization' stamp: 'HernanWilkinson 7/13/2011 18:46'!
initializeFor: aValue

	value := aValue ! !


!Withdraw methodsFor: 'value' stamp: 'HernanWilkinson 7/13/2011 18:33'!
value

	^ value! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Withdraw class' category: 'ServiciosFinancieros-Ejercicio'!
Withdraw class
	instanceVariableNames: ''!

!Withdraw class methodsFor: 'instance creation' stamp: 'HernanWilkinson 7/13/2011 18:33'!
for: aValue

	^ self new initializeFor: aValue ! !


!classDefinition: #Portfolio category: 'ServiciosFinancieros-Ejercicio'!
Object subclass: #Portfolio
	instanceVariableNames: 'portfolio totalTransactions'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ServiciosFinancieros-Ejercicio'!

!Portfolio methodsFor: 'Portfolio - client operations' stamp: 'vf 6/6/2022 21:04:41'!
add: anElementToAdd
	
	portfolio add: anElementToAdd.! !

!Portfolio methodsFor: 'Portfolio - client operations' stamp: 'vf 6/6/2022 21:26:17'!
balance

	^(portfolio sum: [:anElementOfThePortfolio| anElementOfThePortfolio balance] ifEmpty: [0]).! !

!Portfolio methodsFor: 'Portfolio - client operations' stamp: 'VZ 6/8/2022 19:07:00'!
registerAnTransaction: anTransaction

	(portfolio size = 0) ifTrue: [^false].

	portfolio do: [:anElementOfThePortfolio| ^(anElementOfThePortfolio registerAnTransaction: anTransaction)].
	! !

!Portfolio methodsFor: 'Portfolio - client operations' stamp: 'VZ 6/7/2022 21:01:58'!
transactions
	
	self resetTotalTransactions.
	
	portfolio do: [:anElementOfThePortfolio| self addToTotalTransactions: 	(anElementOfThePortfolio transactions)].
	
	^self totalTransactions. 
	! !


!Portfolio methodsFor: 'Portfolio - private operations' stamp: 'VZ 6/8/2022 19:07:28'!
addToTotalTransactions: anColecctionOfTransactions
	
	anColecctionOfTransactions do: [:anTransaction| totalTransactions add: anTransaction].
! !

!Portfolio methodsFor: 'Portfolio - private operations' stamp: 'VZ 6/7/2022 20:25:28'!
initialize
	
	portfolio := OrderedCollection  new.
	totalTransactions := OrderedCollection new.
! !

!Portfolio methodsFor: 'Portfolio - private operations' stamp: 'VZ 6/7/2022 20:46:25'!
resetTotalTransactions

	totalTransactions  := OrderedCollection new.! !

!Portfolio methodsFor: 'Portfolio - private operations' stamp: 'VZ 6/7/2022 21:04:39'!
totalTransactions

	(totalTransactions size = 0) ifTrue:[self error: self class emptyPortfolioErrorMessage].

	^totalTransactions  copy.! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Portfolio class' category: 'ServiciosFinancieros-Ejercicio'!
Portfolio class
	instanceVariableNames: ''!

!Portfolio class methodsFor: 'as yet unclassified' stamp: 'VZ 6/7/2022 21:03:28'!
emptyPortfolioErrorMessage
	^'Can not give the transactions of an empty portfolio!!'.! !


!classDefinition: #ReceptiveAccount category: 'ServiciosFinancieros-Ejercicio'!
Object subclass: #ReceptiveAccount
	instanceVariableNames: 'totalTransactions deposits withdraws'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ServiciosFinancieros-Ejercicio'!

!ReceptiveAccount methodsFor: 'initialization' stamp: 'VZ 6/4/2022 13:05:41'!
initialize

	totalTransactions := OrderedCollection new.
	deposits  := OrderedCollection  new.
	withdraws  := OrderedCollection new.! !


!ReceptiveAccount methodsFor: 'main protocol' stamp: 'VZ 6/5/2022 13:45:49'!
balance

	^(deposits sum: [ :aTransaction | aTransaction value ] ifEmpty: [ 0 ]) - (withdraws sum: [ :aTransaction | aTransaction value ] ifEmpty: [ 0 ] ).! !

!ReceptiveAccount methodsFor: 'main protocol' stamp: 'VZ 6/4/2022 12:38:52'!
hasRegistered: aTransaction

	^(deposits includes: aTransaction) or: (withdraws  includes: aTransaction).
! !

!ReceptiveAccount methodsFor: 'main protocol' stamp: 'VZ 6/4/2022 13:05:27'!
register: aTransaction

	(aTransaction class = Deposit) ifTrue: [deposits add: aTransaction].
	(aTransaction class = Withdraw) ifTrue: [withdraws  add: aTransaction ].
	totalTransactions add: aTransaction.

! !

!ReceptiveAccount methodsFor: 'main protocol' stamp: 'VZ 6/7/2022 23:05:15'!
registerAnTransaction: anTransaction
	
	totalTransactions do: [:anTransactionToSearch| (anTransactionToSearch = anTransaction) ifTrue: [^true]].
		! !

!ReceptiveAccount methodsFor: 'main protocol' stamp: 'VZ 6/4/2022 13:06:54'!
transactions 

	^totalTransactions copy.! !


!classDefinition: #Transference category: 'ServiciosFinancieros-Ejercicio'!
Object subclass: #Transference
	instanceVariableNames: 'value withdrawFoot depositFoot'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ServiciosFinancieros-Ejercicio'!

!Transference methodsFor: 'Transference - private operations' stamp: 'VZ 6/5/2022 12:58:10'!
createTransferenceFootWithTheWithdrawFoot: aWithdrawFoot andTheDepositFoot: aDepositFoot
	
	withdrawFoot := aWithdrawFoot.
	depositFoot  := aDepositFoot
	! !


!Transference methodsFor: 'Transference - cient operations' stamp: 'VZ 6/5/2022 13:21:24'!
depositFoot
	^depositFoot copy.! !

!Transference methodsFor: 'Transference - cient operations' stamp: 'VZ 6/5/2022 12:58:39'!
doTransferenceFromTheAccount: accountA forTheMoneyAmount: aMoneyAmount toTheAccount: accountB
	
	|withdrawForAccountA depositForAccountB|
	
	withdrawForAccountA := Withdraw  register: aMoneyAmount  on: accountA.
	depositForAccountB := Deposit register: aMoneyAmount  on: accountB.

	self createTransferenceFootWithTheWithdrawFoot: depositForAccountB  andTheDepositFoot: withdrawForAccountA.
	

		
! !

!Transference methodsFor: 'Transference - cient operations' stamp: 'VZ 6/4/2022 13:28:44'!
value
	^value.! !

!Transference methodsFor: 'Transference - cient operations' stamp: 'VZ 6/5/2022 13:00:02'!
withdrawFoot

	^withdrawFoot copy.! !
