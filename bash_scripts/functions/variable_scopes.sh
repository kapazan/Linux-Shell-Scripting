#!/bin/bash

var1='global 1'
var2='global 2'

var_scope () {
  local var1='expression 1'
  var2='expression 2'
  echo -e "Inside function:\nvar1: $var1\nvar2: $var2"
}

echo -e "Before calling function:\nvar1: $var1\nvar2: $var2"

var_scope

echo -e "After calling function:\nvar1: $var1\nvar2: $var2"
