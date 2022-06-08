!classDefinition: #OOStackTest category: 'Stack-Exercise'!
TestCase subclass: #OOStackTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Stack-Exercise'!

!OOStackTest methodsFor: 'test' stamp: 'VZ 5/11/2022 20:08:20'!
test01StackShouldBeEmptyWhenCreated
	
	| stack |
	
	stack := OOStack new.
	
	self assert: stack isEmpty! !

!OOStackTest methodsFor: 'test' stamp: 'NR 5/13/2020 13:29:55'!
test02PushAddElementsToTheStack

	| stack |
	
	stack := OOStack new.
	stack push: 'something'.
	
	self deny: stack isEmpty! !

!OOStackTest methodsFor: 'test' stamp: 'NR 5/13/2020 13:30:01'!
test03PopRemovesElementsFromTheStack

	| stack |
	
	stack := OOStack new.
	stack push: 'something'.
	stack pop.
	
	self assert: stack isEmpty! !

!OOStackTest methodsFor: 'test' stamp: 'NR 5/13/2020 13:30:09'!
test04PopReturnsLastPushedObject

	| stack pushedObject |
	
	stack := OOStack new.
	pushedObject := 'something'.
	stack push: pushedObject.
	
	self assert: stack pop = pushedObject! !

!OOStackTest methodsFor: 'test' stamp: 'NR 5/13/2020 13:30:48'!
test05StackBehavesLIFO

	| stack firstPushedObject secondPushedObject |
	
	stack := OOStack new.
	firstPushedObject := 'first'.
	secondPushedObject := 'second'.
	
	stack push: firstPushedObject.
	stack push: secondPushedObject.
	
	self assert: stack pop = secondPushedObject.
	self assert: stack pop = firstPushedObject.
	self assert: stack isEmpty 
	! !

!OOStackTest methodsFor: 'test' stamp: 'NR 5/13/2020 13:30:20'!
test06TopReturnsLastPushedObject

	| stack pushedObject |
	
	stack := OOStack new.
	pushedObject := 'something'.
	
	stack push: pushedObject.
	
	self assert: stack top = pushedObject.
	! !

!OOStackTest methodsFor: 'test' stamp: 'NR 5/13/2020 13:30:24'!
test07TopDoesNotRemoveObjectFromStack

	| stack pushedObject |
	
	stack := OOStack new.
	pushedObject := 'something'.
	
	stack push: pushedObject.
	
	self assert: stack size = 1.
	stack top.
	self assert: stack size = 1.
	! !

!OOStackTest methodsFor: 'test' stamp: 'HAW 4/14/2017 22:48:26'!
test08CanNotPopWhenThereAreNoObjectsInTheStack

	| stack  |
	
	stack := OOStack new.
	self
		should: [ stack pop ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText = OOStack stackEmptyErrorDescription ]
		
! !

!OOStackTest methodsFor: 'test' stamp: 'NR 5/13/2020 13:30:31'!
test09CanNotPopWhenThereAreNoObjectsInTheStackAndTheStackHadObjects

	| stack  |
	
	stack := OOStack new.
	stack push: 'something'.
	stack pop.
	
	self
		should: [ stack pop ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText = OOStack stackEmptyErrorDescription ]
		
! !

!OOStackTest methodsFor: 'test' stamp: 'HAW 4/14/2017 22:48:44'!
test10CanNotTopWhenThereAreNoObjectsInTheStack

	| stack  |
	
	stack := OOStack new.
	self
		should: [ stack top ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText = OOStack stackEmptyErrorDescription ]
		
! !


!classDefinition: #SentenceFinderByPrefixTest category: 'Stack-Exercise'!
TestCase subclass: #SentenceFinderByPrefixTest
	instanceVariableNames: 'stack sentenceFinder prefixStack'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Stack-Exercise'!

!SentenceFinderByPrefixTest methodsFor: 'Testing' stamp: 'VF 5/15/2022 13:10:34'!
test01WhenTheStackIsEmptyCanNotSearch

	self assertThatTheTestFailedWithPrefix: '' AndErrorMessage: SentenceFinderByPrefix stackEmptyErrorDescription.
		
	
	
	
	

! !

!SentenceFinderByPrefixTest methodsFor: 'Testing' stamp: 'VF 5/15/2022 13:10:34'!
test02WhenThePrefixIsEmptyCanNotSearch

	stack push: 'aString'.

	self assertThatTheTestFailedWithPrefix: '' AndErrorMessage: SentenceFinderByPrefix prefixEmptyErrorDescription.! !

!SentenceFinderByPrefixTest methodsFor: 'Testing' stamp: 'VF 5/15/2022 13:10:34'!
test03WhenThePrefixHasSpaceCanNotSearch

	stack push: 'aString'.

	self assertThatTheTestFailedWithPrefix: ' ' AndErrorMessage: SentenceFinderByPrefix prefixSpaceErrorDescription.! !

!SentenceFinderByPrefixTest methodsFor: 'Testing' stamp: 'VF 5/15/2022 12:56:43'!
test04WhenThePrefixExistThePrefixStackIsNotEmpty

	stack push: 'aString'.
	prefixStack  := sentenceFinder findOnTheStack:  stack thePrefix: 'aS'.
	
	self assert: prefixStack size equals: 1. 
	
	! !

!SentenceFinderByPrefixTest methodsFor: 'Testing' stamp: 'VF 5/15/2022 12:56:59'!
test05WhenThePrefixExistItCanFoundInTheStackPrefix

	stack push: 'aString'.
	prefixStack  := sentenceFinder findOnTheStack:  stack thePrefix: 'aS'.
	
	self assert: prefixStack top equals: 'aString'.
	
	! !

!SentenceFinderByPrefixTest methodsFor: 'Testing' stamp: 'VF 5/15/2022 13:02:02'!
test06WhenThePrefixIsNotExistsItReceivedAnEmptyStackPrefix

	stack push: 'aString'.
	prefixStack  := sentenceFinder findOnTheStack:  stack thePrefix: 'ho'.
	
	self assert: prefixStack size equals: 0. 
	! !

!SentenceFinderByPrefixTest methodsFor: 'Testing' stamp: 'VF 5/15/2022 12:59:17'!
test07WhenTwoElementsHaveASamePrefixThePrefixStackHasTwoElements

	stack push: 'aString'.
	stack push: 'aSpace'.
	prefixStack  := sentenceFinder findOnTheStack:  stack thePrefix: 'aS'.
	
	self assert: prefixStack size equals: 2.
	
	! !

!SentenceFinderByPrefixTest methodsFor: 'Testing' stamp: 'VF 5/15/2022 13:02:54'!
test08WhenUseASentenceFinderTheOriginalStackKeepTheOrder

	stack push: 'aString'.
	stack push: 'Cat'.
	stack push: 'Dog'.
	stack push: 'Style'.
	stack push: 'Victor'.
	stack push: 'aSpace'.
	
	prefixStack  := sentenceFinder findOnTheStack: stack thePrefix: 'aS'.
	
	self assert: stack equals: stack.
	
	! !


!SentenceFinderByPrefixTest methodsFor: 'TestingPrivateMessages' stamp: 'VF 5/15/2022 13:10:33'!
assertThatTheTestFailedWithPrefix: aPrefix AndErrorMessage: errorMessage	
	
	self
		should: [ sentenceFinder findOnTheStack: stack thePrefix: aPrefix. ]
		raise: Error 
		withExceptionDo: [ :anError |
			self assert: anError messageText = errorMessage ]! !

!SentenceFinderByPrefixTest methodsFor: 'TestingPrivateMessages' stamp: 'VF 5/15/2022 13:07:52'!
setUp
	stack := OOStack new.
	sentenceFinder := SentenceFinderByPrefix new.! !


!classDefinition: #OOStack category: 'Stack-Exercise'!
Object subclass: #OOStack
	instanceVariableNames: 'orderedCollection stackStatus'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Stack-Exercise'!

!OOStack methodsFor: 'Operations' stamp: 'VZ 5/11/2022 21:04:39'!
isEmpty
	^orderedCollection size = 0.! !

!OOStack methodsFor: 'Operations' stamp: 'VZ 5/13/2022 23:32:46'!
pop
	|elementRemoved|
	elementRemoved  := stackStatus popOf: self.
	self changeStackStatus.
	^elementRemoved.
	
	"(self size > 0)  ifTrue: [^orderedCollection removeLast]
				ifFalse:  [^self error: self class stackEmptyErrorDescription]."! !

!OOStack methodsFor: 'Operations' stamp: 'VZ 5/13/2022 22:51:47'!
push: anItemToAdd
	orderedCollection addLast: anItemToAdd.
	self changeStackStatus.! !

!OOStack methodsFor: 'Operations' stamp: 'VZ 5/11/2022 21:47:08'!
size 
	^orderedCollection size.! !

!OOStack methodsFor: 'Operations' stamp: 'VZ 5/13/2022 23:22:10'!
top
	^stackStatus topOf: self.


	
	
	! !


!OOStack methodsFor: 'PrivateOperations' stamp: 'VZ 5/13/2022 22:47:19'!
changeStackStatus
	
	(self isEmpty = true) ifTrue:[stackStatus  := EmptyStackStatus new]
			      ifFalse: [stackStatus  := StackWithContentStatus  new].! !

!OOStack methodsFor: 'PrivateOperations' stamp: 'VZ 5/14/2022 00:56:09'!
doThePopWhenTheStackIsNotEmpty
	^orderedCollection removeLast.! !

!OOStack methodsFor: 'PrivateOperations' stamp: 'VZ 5/14/2022 00:58:40'!
doTheTopWhenTheStackIsEmpty
	^self error: self class stackEmptyErrorDescription.
	! !

!OOStack methodsFor: 'PrivateOperations' stamp: 'VZ 5/14/2022 00:54:37'!
giveMeTheTopOfTheStackIsNotEmpty
	^orderedCollection last.! !

!OOStack methodsFor: 'PrivateOperations' stamp: 'VZ 5/14/2022 00:58:00'!
giveMeTheTopWhenTheStackIsEmpty 
	^self error: self class stackEmptyErrorDescription.

! !

!OOStack methodsFor: 'PrivateOperations' stamp: 'VZ 5/13/2022 22:38:53'!
initialize
	stackStatus  := EmptyStackStatus new.
	orderedCollection  := OrderedCollection new.! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'OOStack class' category: 'Stack-Exercise'!
OOStack class
	instanceVariableNames: ''!

!OOStack class methodsFor: 'error descriptions' stamp: 'HernanWilkinson 5/7/2012 11:51'!
stackEmptyErrorDescription
	
	^ 'Stack is empty'! !


!classDefinition: #SentenceFinderByPrefix category: 'Stack-Exercise'!
Object subclass: #SentenceFinderByPrefix
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Stack-Exercise'!

!SentenceFinderByPrefix methodsFor: 'Find' stamp: 'VF 5/15/2022 12:24:40'!
findOnTheStack: aStack thePrefix: aPrefixe

	| temporalStack prefixStack stackElement |
	
	temporalStack := OOStack new.
	prefixStack  := OOStack new.
	
	self verifyAValidStack: aStack andAValidPrefix: aPrefixe.

	(aStack size) timesRepeat: [	
		
		stackElement := aStack pop.
		(stackElement beginsWith: aPrefixe) ifTrue: [prefixStack push: stackElement].		
			].
	
	(temporalStack size) timesRepeat: [
		stackElement := temporalStack pop.
		aStack push: stackElement.	
			].
		
		^prefixStack.
	
	
	! !


!SentenceFinderByPrefix methodsFor: 'PrivateFindMessage' stamp: 'VF 5/15/2022 12:24:39'!
verifyAValidStack: aStack andAValidPrefix: aPrefixe

	| aPrefixSpace |
	aPrefixSpace := ' '.

	(aStack isEmpty) ifTrue: [self error: self class stackEmptyErrorDescription].
	(aPrefixe isEmpty) ifTrue: [self error: self class prefixEmptyErrorDescription].
	(aPrefixe includesSubString: aPrefixSpace) ifTrue: [self error: self class prefixSpaceErrorDescription].! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'SentenceFinderByPrefix class' category: 'Stack-Exercise'!
SentenceFinderByPrefix class
	instanceVariableNames: ''!

!SentenceFinderByPrefix class methodsFor: 'as yet unclassified' stamp: 'Vf 5/14/2022 17:56:11'!
prefixEmptyErrorDescription
	
	^ 'Prefix is empty'! !

!SentenceFinderByPrefix class methodsFor: 'as yet unclassified' stamp: 'Vf 5/14/2022 18:13:49'!
prefixSpaceErrorDescription
	
	^ 'Prefix has a space'! !

!SentenceFinderByPrefix class methodsFor: 'as yet unclassified' stamp: 'Vf 5/14/2022 17:55:50'!
stackEmptyErrorDescription
	
	^ 'Stack is empty'! !


!classDefinition: #StackStatus category: 'Stack-Exercise'!
Object subclass: #StackStatus
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Stack-Exercise'!

!StackStatus methodsFor: 'PrincipalMessage' stamp: 'VZ 5/13/2022 23:32:45'!
popOf: aStack
	self subclassResponsibility.! !

!StackStatus methodsFor: 'PrincipalMessage' stamp: 'VF 5/15/2022 13:06:14'!
topOf: aStack
	self subclassResponsibility.! !


!classDefinition: #EmptyStackStatus category: 'Stack-Exercise'!
StackStatus subclass: #EmptyStackStatus
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Stack-Exercise'!

!EmptyStackStatus methodsFor: 'PrincipalMessage' stamp: 'VZ 5/14/2022 01:00:47'!
popOf: aStack
	^aStack giveMeTheTopWhenTheStackIsEmpty. ! !

!EmptyStackStatus methodsFor: 'PrincipalMessage' stamp: 'VZ 5/14/2022 01:00:42'!
topOf: aStack
	^aStack  doTheTopWhenTheStackIsEmpty.
! !


!classDefinition: #StackWithContentStatus category: 'Stack-Exercise'!
StackStatus subclass: #StackWithContentStatus
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Stack-Exercise'!

!StackWithContentStatus methodsFor: 'PrincipalMessage' stamp: 'VZ 5/14/2022 00:56:09'!
popOf: aStack
	^aStack doThePopWhenTheStackIsNotEmpty.
	
	
	! !

!StackWithContentStatus methodsFor: 'PrincipalMessage' stamp: 'VZ 5/14/2022 00:54:37'!
topOf: aStack  
	^aStack giveMeTheTopOfTheStackIsNotEmpty.
	
	! !
