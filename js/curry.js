function curry(x) {
  this.args = [x]
  self = this
  function curryAux(x) {
    this.args.push(x)
    return function(x) {
      curryAux(x);
      return this.args;
    }
  }
  return function(x) {
    return curryAux(x);
  };
}

function assert(condition) {
  if(condition) {
    console.log("+ OK")
  } else {
    console.log("- FAIL")
  }
}

console.log(curry(1))
console.log(curry(1)(2))
console.log(curry(1)(2)(3))
assert(curry(1) == 1)
console.log(args)
assert(curry(1)(2) == -1)
console.log(args)
assert(curry(1)(2)(3) == 2)
console.log(args)
