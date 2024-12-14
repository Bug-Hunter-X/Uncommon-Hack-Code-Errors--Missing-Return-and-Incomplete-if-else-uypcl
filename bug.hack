function foo(x: int): int {
  if (x == 0) {
    return 1;
  } else {
    return x * foo(x - 1);
  }
}

function bar(x: int): int {
  if (x < 0) {
    return -1;
  } else {
    return foo(x);
  }
}

HH
/* This will not compile because it has no return statement for the case where x is negative. */
function baz(x: int): int {
  if (x < 0) {
    // Missing return statement
  } else {
    return x;
  }
}

/* In this example, the if statement does not cover the case where x is negative. */
function qux(x: int): int {
  if (x == 0) {
    return 1;
  } else {
    return x * qux(x - 1);
  }
}