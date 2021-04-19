Class {
	#name : #Counter,
	#superclass : #Object,
	#instVars : [
		'count'
	],
	#category : #MyCounter
}

{ #category : #accessing }
Counter >> count [ 
	^ count
]

{ #category : #accessing }
Counter >> count: anInteger [
	count := anInteger
]

{ #category : #API }
Counter >> decrement [
	count := count -1
]

{ #category : #accessing }
Counter >> increment [ 
	count := count + 1
]

{ #category : #API }
Counter >> initialize [ 
	count := 0
]

{ #category : #'instance creation' }
Counter >> new [ 
	super
]

{ #category : #API }
Counter >> printOn: aStream [ 
	super printOn: aStream.
	aStream nextPutAll: 'with value: ', count printString.
]

{ #category : #API }
Counter >> self [
	super
]

{ #category : #API }
Counter >> startCounterAt: anInteger [
	^ self new count: anInteger.
]
