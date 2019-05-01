library(testthat);
context("Temperature function testing");
source("temp_conversion.R");

test_that("Fahrenheit to Celsius", {
  
  temp_C <- F_to_C(50);
  
  # Test that the result is numeric
  expect_that( object = is.numeric(temp_C), condition = equals(TRUE) );
  
  # Test that the result is the correct value
  expect_that( object = temp_C, condition = equals(10) );
})

test_that("Celsius to Fahrenheit", {
  
  temp_F <- C_to_F(10);
  
  # Test that the result is numeric
  expect_that( object = is.numeric(temp_F), condition = equals(TRUE) );
  
  # Test that the result is the correct value
  expect_that( object = temp_F, condition = equals(50) );
})

# This test will fail
test_that(desc = "Fahrenheit to Celsius wrong", code = {
    temp_F <- F_to_C(50);
    expect_that( object = temp_F, condition = equals(2) );
})

# The two tests can be run on the command line as below
# test_dir(".")