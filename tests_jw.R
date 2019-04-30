TestIdResp <- function(data) {
  testthat::test_that('ID resp is integer, and there are no NAs', {
    testthat::expect_is(data[['id.resp']], 'numeric')
    testthat::expect_false(any(is.na(data[['id.resp']])))
  })
}



TestSex <- function(data) {
  testthat::test_that('Sex is character M or F', {
    testthat::expect_is(data[['sex']], 'character')
    testthat::expect_setequal(data[['sex']], c('M', 'F'))
  })
}



TestDups <- function(data) {
  testthat::test_that('All records are correctly duplicated', {
    testthat::expect_equal(max(data[['id.dup']]), 2)
  })
}
