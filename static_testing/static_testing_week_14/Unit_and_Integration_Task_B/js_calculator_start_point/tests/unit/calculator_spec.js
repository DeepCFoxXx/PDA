var Calculator = require('../../public/js/calculator.js')
var assert = require('assert')

describe('calculator', function () {
  beforeEach(function () {
    calculator = new Calculator()
  });

  // write unit tests here in the form of "it should do something..."
  it('it has a sample test', function(){
    assert.equal(true, true)
  })

  it('it should add', function() {
    calculator.previousTotal = 3; // the total of the previous operation
    calculator.add(3); // calling function in calculator prototype
    assert.equal(calculator.runningTotal, 6); // the current value to operate on the previous total
  });

  it('it should subtract', function() {
    calculator.previousTotal = 10;
    calculator.subtract(5);
    assert.equal(calculator.runningTotal, 5);
  });

  it('it should multiply', function() {
    calculator.previousTotal = 10;
    calculator.multiply(10);
    assert.equal(calculator.runningTotal, 100);
  });

  it('it should divide', function() {
    calculator.previousTotal = 9;
    calculator.divide(3);
    assert.equal(calculator.runningTotal, 3);
  });

  it('it should number click', function() {
    calculator.numberClick(1);
    assert.equal(calculator.runningTotal, 1);
  });

  it('it should operator click', function() {
    calculator.operatorClick('+');
    assert.equal(calculator.previousOperator, '+'); // the last operator the user clicked
  });

  it('it should clear click', function() {
    calculator.numberClick(1);
    calculator.clearClick();
    assert.equal(calculator.runningTotal, 0);
  });

  it('it should multiply 3x5 and get 15', function() {
    calculator.previousTotal = 3;
    calculator.multiply(5);
    assert.equal(calculator.runningTotal, 15);
  });

  it('should divide 21/7 and get 3', function() {
    calculator.previousTotal = 21;
    calculator.divide(7);
    assert.equal(calculator.runningTotal, 3);
  });

  it('should add 1+4 and get 5', function() {
    calculator.previousTotal = 1;
    calculator.add(4);
    assert.equal(calculator.runningTotal, 5);
  });

  it('should subtract 7-4 and get 3', function() {
    calculator.previousTotal = 7;
    calculator.subtract(4);
    assert.equal(calculator.runningTotal, 3);
  });

  it('should concatenate multiple number button clicks', function() {
    calculator.numberClick(1);
    calculator.operatorClick('+');
    calculator.numberClick(1);
    calculator.operatorClick('+');
    calculator.numberClick(1);
    calculator.operatorClick('=');
    assert.equal(calculator.runningTotal, 3);
  });

  it('should chain multiple operations together', function() {
    calculator.numberClick(8);
    calculator.operatorClick('+');
    calculator.numberClick(5);
    calculator.operatorClick('-');
    calculator.numberClick(2);
    calculator.operatorClick('*');
    calculator.numberClick(5);
    calculator.operatorClick('=');
    assert.equal(calculator.runningTotal, 55);
  });

  it('should clear the running total without affecting the calculation', function() {
    calculator.numberClick(5);
    calculator.operatorClick('+');
    calculator.numberClick(5);
    calculator.clearClick();
    calculator.numberClick(5);
    calculator.operatorClick('=');
    assert.equal(calculator.runningTotal, 10);
  });

});
