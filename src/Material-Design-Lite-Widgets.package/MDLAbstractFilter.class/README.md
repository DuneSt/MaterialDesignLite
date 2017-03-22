I am an abstract class managing the filtering of a nested list. I act in a design pattern strategy.

My subclasses should be able to filter a MDLNestedList.

Public API and Key Messages

- class>>#isMatching: aString with: aPattern		Return a boolean. True if the pattern matches the string, else false.