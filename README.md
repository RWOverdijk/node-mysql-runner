# node-mysql-runner

This node-mysql runner works with a node project. 

# What it Does

This node 8-alpine runner installs the dependencies using `npm install`. 
The dependencies must be specified in the `package.json` file at the project root as specified in the [official documentation](https://docs.npmjs.com/getting-started/using-a-package.json).

It also sets up a MySQL server.

# How to Use

In order to use this runner in your project, edit the `techio.yml` file and add the following lines to your project:

```yaml
runner: rwoverdijk/node-mysql-runner
```

## Example

In this example, the student is asked to write a method `toUpper()` (file `uppercase.js`):

```javascript
function toUpper(str) {
	return str.toUpperCase();
}
module.exports = toUpper;
```

In order to test the answer, the following unit test is created (file `tests/test.js`):

```javascript
var toUpper = require('./uppercase.js');
var assert = require('assert');
it('should return HELLO', function() {
	assert.equal('HELLO', toUpper('hello'));
});
it('should return WORLD', function() {
	assert.equal('WORLD', toUpper('world'));
});
```

We include the unit testing library mocha in the package.json file:
```javascript
{
	"dependencies": {
		"mocha": "*",
		"should": ">= 0.0.1"
	}
}
```

In the lesson, the unit test can be called using:

`@[Test unittest: uppercase]({"stubs":["uppercase.js"], "command":"node_modules/mocha/bin/mocha test.js --reporter list"})`
