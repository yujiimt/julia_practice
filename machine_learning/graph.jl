using Pkg

Pkg.add("LinearAlgebra")
Pkg.add("LightGraphs")
Pkg.add("GraphPlot")


using LinearAlgebra
using LightGraphs
using GraphPlot

function randomnet(N, p)
    A = rand(N, N);
    B = LowerTriangular(A);
    C = Diagonal(A);

    D = B - C ;
    D = D + D'


    ## pより大きい数字を０に置き換える
    overp = findall(x->x.>p, D);
    overpc = count(x->x.>p, D);
    D[overp] = zeros(overpc, 1);

    ##p以下の数字を１に置き換える
    underp = findall(x -> 0<x.<= p, D);
    underpc = count(x-> 0<x.<= p, D);
    D[underp] = ones(underpc, 1);

    return D
end


matrix = randomnet(100, 0.1)
G = Graph(matrix)

gplot(G)
