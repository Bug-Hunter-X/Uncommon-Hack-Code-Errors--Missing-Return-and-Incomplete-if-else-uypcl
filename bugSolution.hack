function foo(x: int): int {
  if (x == 0) {
    return 1;
  } else {
    return x * foo(x - 1);
  }
}

function bar(x: int): int {
  if (x < 0) {
    return -1; // Added return statement
  } else {
    return foo(x);
  }
}

function baz(x: int): int {
  if (x < 0) {
    return -1; // Added return statement
  } else {
    return x;
  }
}

function qux(x: int): int {
  if (x <= 0) { // Modified condition to include x=0
    return 1;
  } else {
    return x * qux(x - 1);
  }
}

HH