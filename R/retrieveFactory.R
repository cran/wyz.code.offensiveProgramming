retrieveFactory <- function(functionParameterTypeFactory_o_1 = NULL) {
  if (is.environment(functionParameterTypeFactory_o_1) &&
      is(functionParameterTypeFactory_o_1, 'FunctionParameterTypeFactory')) {
    functionParameterTypeFactory_o_1
  } else {
    FunctionParameterTypeFactory()
  }
}
