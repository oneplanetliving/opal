opal_filter "Module" do
  fails "Module#< raises a TypeError if the argument is not a class/module"
  fails "Module#< returns nil if self is not related to the given module"
  fails "Module#< returns true if self is a subclass of or includes the given module"
  fails "Module#<= raises a TypeError if the argument is not a class/module"
  fails "Module#<= returns false if self is a superclass of or is included by the given module"
  fails "Module#<= returns nil if self is not related to the given module"
  fails "Module#<= returns true if self is a subclass of, the same as or includes the given module"
  fails "Module#<=> returns +1 if self is a superclas of or included by the given module"
  fails "Module#<=> returns -1 if self is a subclass of or includes the given module"
  fails "Module#=== returns true when the given Object's class includes self or when the given Object is extended by self"
  fails "Module#> raises a TypeError if the argument is not a class/module"
  fails "Module#> returns false if self is a subclass of or includes the given module"
  fails "Module#> returns false if self is the same as the given module"
  fails "Module#> returns nil if self is not related to the given module"
  fails "Module#> returns true if self is a superclass of or included by the given module"
  fails "Module#>= raises a TypeError if the argument is not a class/module"
  fails "Module#>= returns false if self is a subclass of or includes the given module"
  fails "Module#>= returns nil if self is not related to the given module"
  fails "Module#>= returns true if self is a superclass of, the same as or included by given module"
  fails "Module#alias_method accesses a method defined on Object from Kernel"
  fails "Module#alias_method can call a method with super aliased twice"
  fails "Module#alias_method fails if origin method not found"
  fails "Module#alias_method preserves the arguments information of the original methods"
  fails "Module#alias_method raises a TypeError when the given name can't be converted using to_str"
  fails "Module#alias_method retains method visibility"
  fails "Module#ancestors returns a list of modules included in self (including self)"
  fails "Module#ancestors returns only modules and classes"
  fails "Module#ancestors when called on a singleton class includes the singleton classes of ancestors"
  fails "Module#append_features copies own tainted status to the given module"
  fails "Module#append_features copies own untrusted status to the given module"
  fails "Module#append_features on Class raises a TypeError if calling after rebinded to Class"
  fails "Module#append_features raises an ArgumentError on a cyclic include"
  fails "Module#attr applies current visibility to methods created"
  fails "Module#attr applies current visibility to methods created"
  fails "Module#attr converts non string/symbol/fixnum names to strings using to_str"
  fails "Module#attr creates a getter but no setter for all given attribute names"
  fails "Module#attr creates a getter for the given attribute name"
  fails "Module#attr raises a TypeError when the given names can't be converted to strings using to_str"
  fails "Module#attr_accessor allows creating an attr_accessor on an immediate class"
  fails "Module#attr_accessor applies current visibility to methods created"
  fails "Module#attr_accessor converts non string/symbol/fixnum names to strings using to_str"
  fails "Module#attr_accessor raises a TypeError when the given names can't be converted to strings using to_str"
  fails "Module#attr_reader allows for adding an attr_reader to an immediate"
  fails "Module#attr_reader applies current visibility to methods created"
  fails "Module#attr_reader converts non string/symbol/fixnum names to strings using to_str"
  fails "Module#attr_reader raises a TypeError when the given names can't be converted to strings using to_str"
  fails "Module#attr_writer allows for adding an attr_writer to an immediate"
  fails "Module#attr_writer applies current visibility to methods created"
  fails "Module#attr_writer converts non string/symbol/fixnum names to strings using to_str"
  fails "Module#attr_writer raises a TypeError when the given names can't be converted to strings using to_str"
  fails "Module#class_eval adds methods respecting the lexical constant scope"
  fails "Module#class_eval converts a non-string filename to a string using to_str"
  fails "Module#class_eval converts non string eval-string to string using to_str"
  fails "Module#class_eval defines constants in the receiver's scope"
  fails "Module#class_eval evaluates a given string in the context of self"
  fails "Module#class_eval raises a TypeError when the given eval-string can't be converted to string using to_str"
  fails "Module#class_eval raises a TypeError when the given filename can't be converted to string using to_str"
  fails "Module#class_eval resolves constants in the caller scope ignoring send"
  fails "Module#class_eval resolves constants in the caller scope"
  fails "Module#class_eval resolves constants in the receiver's scope"
  fails "Module#class_eval uses the optional filename and lineno parameters for error messages"
  fails "Module#class_exec defines method in the receiver's scope"
  fails "Module#class_exec passes arguments to the block"
  fails "Module#class_exec raises a LocalJumpError when no block is given"
  fails "Module#class_variable_defined? converts a non string/symbol/fixnum name to string using to_str"
  fails "Module#class_variable_defined? raises a TypeError when the given names can't be converted to strings using to_str"
  fails "Module#class_variable_defined? returns false if a class variables with the given name is defined in an extended module"
  fails "Module#class_variable_defined? returns false if the class variable is not defined in a metaclass"
  fails "Module#class_variable_defined? returns true if a class variable with the given name is defined in self"
  fails "Module#class_variable_defined? returns true if a class variable with the given name is defined in the metaclass"
  fails "Module#class_variable_defined? returns true if a class variables with the given name is defined in an included module"
  fails "Module#class_variable_defined? returns true if the class variable is defined in a metaclass"
  fails "Module#class_variable_get returns the value of a class variable with the given name defined in an included module"
  fails "Module#class_variable_set sets the value of a class variable with the given name defined in an included module"
  fails "Module#class_variables does not return class variables defined in extended modules"
  fails "Module#class_variables returns an Array of Symbols of class variable names defined in a metaclass"
  fails "Module#class_variables returns an Array with names of class variables defined in metaclasses"
  fails "Module#class_variables returns an Array with the names of class variables of self"
  fails "Module#const_defined? should not search parent scopes of classes and modules if inherit is false"
  fails "Module#const_get accepts a toplevel scope qualifier"
  fails "Module#const_get calls #to_str to convert the given name to a String"
  fails "Module#const_get does not search the singleton class of a Class or Module"
  fails "Module#const_get raises a NameError if a Symbol is a scoped constant name"
  fails "Module#const_get raises a NameError if the constant is defined in the receiver's supperclass and the inherit flag is false"
  fails "Module#const_get raises a NameError with the not found constant symbol"
  fails "Module#const_get raises a TypeError if conversion to a String by calling #to_str fails"
  fails "Module#const_get should not search parent scopes of classes and modules if inherit is false"
  fails "Module#const_get with dynamically assigned constants searches a module included in the immediate class before the superclass"
  fails "Module#const_get with dynamically assigned constants searches a module included in the superclass"
  fails "Module#const_get with dynamically assigned constants searches the superclass chain"
  fails "Module#const_missing raises NameError and does not include toplevel Object"
  fails "Module#constants doesn't returns inherited constants when passed false"
  fails "Module#constants doesn't returns inherited constants when passed nil"
  fails "Module#constants includes names of constants defined after a module is included"
  fails "Module#constants returns all constants including inherited when passed some object"
  fails "Module#constants returns all constants including inherited when passed true"
  fails "Module#constants returns an array of Symbol names of all constants defined in the module and all included modules"
  fails "Module#constants returns only public constants"
  fails "Module#define_method does not change the arity check style of the original proc"
  fails "Module#define_method passed {  } creates a method that raises an ArgumentError when passed one argument"
  fails "Module#define_method passed {  } creates a method that raises an ArgumentError when passed two arguments"
  fails "Module#define_method passed { |a, *b|  } creates a method that raises an ArgumentError when passed zero arguments"
  fails "Module#define_method passed { |a, b, *c|  } creates a method that raises an ArgumentError when passed one argument and a block"
  fails "Module#define_method passed { |a, b, *c|  } creates a method that raises an ArgumentError when passed one argument"
  fails "Module#define_method passed { |a, b, *c|  } creates a method that raises an ArgumentError when passed zero arguments"
  fails "Module#define_method passed { |a, b|  } creates a method that raises an ArgumentError when passed one argument and a block"
  fails "Module#define_method passed { |a, b|  } creates a method that raises an ArgumentError when passed one argument"
  fails "Module#define_method passed { |a, b|  } creates a method that raises an ArgumentError when passed three arguments"
  fails "Module#define_method passed { |a, b|  } creates a method that raises an ArgumentError when passed zero arguments"
  fails "Module#define_method passed { |a|  } creates a method that raises an ArgumentError when passed two arguments"
  fails "Module#define_method passed { |a|  } creates a method that raises an ArgumentError when passed zero arguments and a block"
  fails "Module#define_method passed { |a|  } creates a method that raises an ArgumentError when passed zero arguments"
  fails "Module#define_method passed { ||  } creates a method that raises an ArgumentError when passed one argument"
  fails "Module#define_method passed { ||  } creates a method that raises an ArgumentError when passed two arguments"
  fails "Module#define_method raises a TypeError when a Method from a singleton class is defined on another class"
  fails "Module#define_method raises a TypeError when a Method from one class is defined on an unrelated class"
  fails "Module#define_method raises a TypeError when an UnboundMethod from a child class is defined on a parent class"
  fails "Module#define_method raises a TypeError when an UnboundMethod from one class is defined on an unrelated class"
  fails "Module#extend_object does not copy own tainted status to the given object"
  fails "Module#extend_object does not copy own untrusted status to the given object"
  fails "Module#extend_object extends the given object with its constants and methods by default"
  fails "Module#extend_object is called when #extend is called on an object"
  fails "Module#extend_object on Class raises a TypeError if calling after rebinded to Class"
  fails "Module#include adds all ancestor modules when a previously included module is included again"
  fails "Module#include detects cyclic includes"
  fails "Module#include doesn't include module if it is included in a super class"
  fails "Module#include ignores modules it has already included via module mutual inclusion"
  fails "Module#include preserves ancestor order"
  fails "Module#include raises a TypeError when the argument is not a Module"
  fails "Module#include does not override existing constants in modules and classes"
  fails "Module#include recursively includes new mixins"
  fails "Module#include? raises a TypeError when no module was given"
  fails "Module#include? returns true if the given module is included by self or one of it's ancestors"
  fails "Module#included_modules returns a list of modules included in self"
  fails "Module#initialize is called on subclasses"
  fails "Module#instance_method gives UnboundMethod method name, Module defined in and Module extracted from"
  fails "Module#instance_method raises a NameError if the method has been undefined"
  fails "Module#instance_method raises a TypeError if not passed a symbol"
  fails "Module#instance_method raises a TypeError if the given name is not a string/symbol"
  fails "Module#instance_method sets the NameError#name attribute to the name of the missing method"
  fails "Module#method_defined? returns true if a public or private method with the given name is defined in self, self's ancestors or one of self's included modules"
  fails "Module#method_defined? converts the given name to a string using to_str"
  fails "Module#method_defined? raises a TypeError when the given object is not a string/symbol/fixnum"
  fails "Module#module_eval adds methods respecting the lexical constant scope"
  fails "Module#module_eval converts a non-string filename to a string using to_str"
  fails "Module#module_eval converts non string eval-string to string using to_str"
  fails "Module#module_eval defines constants in the receiver's scope"
  fails "Module#module_eval evaluates a given string in the context of self"
  fails "Module#module_eval raises a TypeError when the given eval-string can't be converted to string using to_str"
  fails "Module#module_eval raises a TypeError when the given filename can't be converted to string using to_str"
  fails "Module#module_eval resolves constants in the caller scope ignoring send"
  fails "Module#module_eval resolves constants in the caller scope"
  fails "Module#module_eval resolves constants in the receiver's scope"
  fails "Module#module_eval uses the optional filename and lineno parameters for error messages"
  fails "Module#module_exec defines method in the receiver's scope"
  fails "Module#module_exec passes arguments to the block"
  fails "Module#module_exec raises a LocalJumpError when no block is given"
  fails "Module#module_function as a toggle (no arguments) in a Module body does not affect module_evaled method definitions also if outside the eval itself"
  fails "Module#module_function as a toggle (no arguments) in a Module body doesn't affect definitions when inside an eval even if the definitions are outside of it"
  fails "Module#module_function as a toggle (no arguments) in a Module body functions normally if both toggle and definitions inside a eval"
  fails "Module#module_function as a toggle (no arguments) in a Module body has no effect if inside a module_eval if the definitions are outside of it"
  fails "Module#module_function as a toggle (no arguments) in a Module body affects evaled method definitions also even when outside the eval itself"
  fails "Module#module_function on Class raises a TypeError if calling after rebinded to Class"
  fails "Module#module_function with specific method names raises a TypeError when the given names can't be converted to string using to_str"
  fails "Module#module_function with specific method names tries to convert the given names to strings using to_str"
  fails "Module#prepend accepts no-arguments"
  fails "Module#prepend adds the module in the subclass chains"
  fails "Module#prepend allows wrapping methods"
  fails "Module#prepend also prepends included modules"
  fails "Module#prepend calls #prepend_features(self) in reversed order on each module"
  fails "Module#prepend calls prepended after prepend_features"
  fails "Module#prepend causes the prepended module's method to be aliased by alias_method"
  fails "Module#prepend clears any caches"
  fails "Module#prepend depends on prepend_features to add the module"
  fails "Module#prepend detects cyclic prepends"
  fails "Module#prepend does not import constants"
  fails "Module#prepend does not import methods to modules and classes"
  fails "Module#prepend imports instance methods"
  fails "Module#prepend includes prepended modules in ancestors"
  fails "Module#prepend inserts a later prepended module into the chain"
  fails "Module#prepend is a public method"
  fails "Module#prepend keeps the module in the chain when dupping an intermediate module"
  fails "Module#prepend keeps the module in the chain when dupping the class"
  fails "Module#prepend prepends multiple modules in the right order"
  fails "Module#prepend raises a TypeError when the argument is not a Module"
  fails "Module#prepend reports the prepended module as the method owner"
  fails "Module#prepend reports the prepended module as the unbound method owner"
  fails "Module#prepend returns the class it's included into"
  fails "Module#prepend sees an instance of a prepended class as kind of the prepended module"
  fails "Module#prepend supports super when the module is prepended into a singleton class"
  fails "Module#prepend throws a NoMethodError when there is no more superclass"
  fails "Module#prepend works with subclasses"
  fails "Module#prepend_features copies own tainted status to the given module"
  fails "Module#prepend_features copies own untrusted status to the given module"
  fails "Module#prepend_features gets called when self is included in another module/class"
  fails "Module#prepend_features on Class raises a TypeError if calling after rebinded to Class"
  fails "Module#prepend_features raises an ArgumentError on a cyclic prepend"
  fails "Module#prepended is invoked when self is prepended to another module or class"
  fails "Module#remove_class_variable raises a NameError when an uninitialized class variable is given"
  fails "Module#remove_class_variable raises a NameError when passed a symbol with no leading @"
  fails "Module#remove_class_variable raises a NameError when passed a symbol with one leading @"
  fails "Module#remove_class_variable removes a class variable defined in a metaclass"
  fails "Module#remove_class_variable removes class variable"
  fails "Module#remove_class_variable returns the value of removing class variable"
  fails "Module#remove_const calls #to_str to convert the given name to a String"
  fails "Module#remove_const raises a NameError and does not call #const_missing if the constant is not defined directly in the module"
  fails "Module#remove_const raises a NameError and does not call #const_missing if the constant is not defined"
  fails "Module#remove_const raises a NameError if the name contains non-alphabetic characters except '_'"
  fails "Module#remove_const raises a NameError if the name does not start with a capital letter"
  fails "Module#remove_const raises a NameError if the name starts with a non-alphabetic character"
  fails "Module#remove_const raises a TypeError if conversion to a String by calling #to_str fails"
  fails "Module.allocate returns a fully-formed instance of Module"
  fails "Module.constants returns Module's constants when given a parameter"
  fails "Module.constants returns an array of Symbol names"
  fails "Module.new creates a new Module and passes it to the provided block"
  fails "Module::Nesting returns the list of Modules nested at the point of call"
  fails "Module::Nesting returns the nesting for module/class declaring the called method"
  fails "passed { |a, b = 1|  } creates a method that raises an ArgumentError when passed three arguments"
  fails "passed { |a, b = 1|  } creates a method that raises an ArgumentError when passed zero arguments"
end
