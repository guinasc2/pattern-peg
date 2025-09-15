-- This patterns will match with any function call
pattern call : function_call := #name:identifier @blank "(" @blank #v:(expr_list?) @blank ")"

-- This function will match with any function definitions
pattern definition : function_def := ("def" @blank #name:identifier @blank "(" @blank #p:(id_list?) @blank ")" @blank ":" @blank #c:(comment?)) #block:(line*)

pattern blank : blank := #b:blank