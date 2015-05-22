---
tags: categories, object-oriented, nsnumber, nsinteger
languages: objc
---

# CategoryMath

## Instructions
1. Take a look at the tests we have for this project. You can find them in `UnitTests/Tests/NSNumber+FISMathSpec.m`
2. You'll see that they attempt to import `NSNumber+FISMath.h`. You're getting errors right now because that file doesn't exist. So let's make our first category:
  - File -> New File... -> Source: Objective-C File
    - Name your category FISMath
    - Select File Type: Category
    - Select Class: NSNumber <- this is the class that we're adding a category
      to, in this case NSNumber
3. Awesome! So the file that gets created is an empty category called `FISMath` that will allow us to add to the functionality of NSNumber.
4. Declare 4 methods in the `FISMath` category interface and define them in the implementation file. For now, assume the `NSNumbers` all contain `NSInteger`s.
  - `add:(NSNumber *)number` that returns the `NSNumber` sum of the receiver and the `NSNumber` that is passed in as a parameter 
  - `subtract:(NSNumber *)number` that returns the `NSNumber` difference of the receiver and the `NSNumber` that is passed in as a parameter 
	- `multiplyBy:(NSNumber *)number` that returns the `NSNumber` product of the receiver and the `NSNumber` that is passed in as a parameter
	- `divideBy:(NSNumber *)number` that returns an `NSNumber` that is the receiver divided by the `NSNumber` that is passed in as a parameter
5. For more information, examine the tests in the `NSNumber+FISMathSpec.m` file
6. Make the tests pass!

## Advanced

  1. First add in the `ADVANCED` pre-processor macro to turn on the advanced tests.
    - In Xcode, switch to the file browser in the left pane. Select the project itself (the first item, "CategoryMath", with the blue icon). Now, in the main pane, select "UnitTests" under "Targets", and switch to the "Build Settings" tab. Search in there for "preprocessor", and double click the column after "Prepocessor Macros". In the window that pops up, hit the plus, enter "ADVANCED", and hit enter. See the picture below for more clarity:
    ![](http://curriculum-content.s3.amazonaws.com/ios/category-math/advanced-prepocessor-define.png)
  2. Now let's make our category work a bit better. Right now it only works on integers because we converted everything to an `NSInteger` before doing the math. The problem is this should work for any type of `NSNumber`, from floating point to unsigned integer. There is a method on `NSNumber` called [`objCType`](http://stackoverflow.com/a/2518820) that will tell you what type of number a given `NSNumber` instance contains. Use that so that our category works on all types of numbers.
    - The advanced tests assume you will write these methods in a category called `FISMathAdvanced`, and name them `advancedAdd:`, `advancedSubtract:`, and so on.

