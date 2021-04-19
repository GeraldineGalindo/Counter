Class {
	#name : #CouterTest,
	#superclass : #TestCase,
	#category : #MyCounter
}

{ #category : #tests }
CouterTest >> testCounterDecrement [
	| c |
	c := Counter new.
	c count: 2.
	c decrement .
	self assert: c count equals: 1.
]

{ #category : #tests }
CouterTest >> testCounterIncrement [
	| c |
	c := Counter new.
	c count: 2.
	c increment ; increment.
	self assert: c count equals: 4.
]

{ #category : #tests }
CouterTest >> testCounterIsSetAndRead [
	| c |
	c := Counter new.
	c count: 7.
	self assert: c count equals: 7.
]
