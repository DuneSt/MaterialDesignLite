running
componentUnderTest: anObject
	"Component needs to be held inside a wrapper for running tests in GS, otherwise commit conflicts happen during test execution when setting up the test component"

	testComponent value: anObject.
	self initializeComponentUnderTest: anObject.
	self initializationMap at: testSelector ifPresent: [ :block | block value: anObject ]