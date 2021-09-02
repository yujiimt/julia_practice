using Pkg
Pkg.add("Gadfly")


using Gadfly

function L3P(a, b, c, x)
    c + (1 - c) / (1 + exp(-a * (x - b)))
end


a_min = 0.3
a_max = 1

b_min = -2
b_max = 2

c_min = 0
c_max = 