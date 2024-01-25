##prints hello world... \n does a new line
##hello is compiled-> stored in main memory
function hello()
	print("hello, world\n")
  end;
  
  hello()
##Moral of the story is that we want to minimize need to move info around=> vectorize!
##Numerical Arithmetic##
x = (1e-20 + 1) - 1;
y = (1e-20) + (1 - 1);
x == y
##Why doesn't this work??? Because... number storage
x  ##x has value 0
y ##y has value 1.0e-20

println(typeof(5.0)) ##floating point number means b+-n can move decimal point around in the significand by scaling base up and down.
println(typeof(5))

println("Machine epsilon ϵ is $(eps(Float64))") ##eps gives you the epsilon
println("Is 1 + ϵ/2 > 1? $(1.0 + eps(Float64)/2 > 1.0)") ##says false b/c computer can't distinguish b/w 1 and 1+ a number smaller than epsilon.

##Error##
##1.Rounding
println("Half of π is: $(π/2)") ##gives us a rational number, but should be irrational
##2.Truncation
##Example
x = (1e-20 + 1) - 1   ##adds number smaller than epsilon, so just rounded to 1
y = 1e-20 + (1 - 1)  ## 1-1=0, not rounded away. 

println("The difference is: $(x-y).") 
##Example
 # we know this is the difference is 0.1
println("100000.2 - 100000.1 is: $(100000.2 - 100000.1)")
if (100000.2 - 100000.1) == 0.1 # test if it's 0.1
    println("and it is equal to 0.1")
else
    println("and it is not equal to 0.1") 
end
 # says that it's not! why? can't be precisely represented by the machine. very close but not exact!
 # this is why approx is useful
 #two different ways to write this
 (100000.2 - 100000.1) ≈ 0.1 # You type \approx then hit TAB
 isapprox(100000.2 - 100000.1, 0.1)