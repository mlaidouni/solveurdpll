#!/bin/bash
function dpll_sat() {
    for i in test/sat/*.cnf; do
        echo $i
        ./dpll $i
    done
}
function dpll_unsat() {
    for i in test/unsat/*.cnf; do
        echo $i
        ./dpll $i
    done
    echo test/unstat/bf1355-075.cnf.txt
    ./dpll test/unstat/bf1355-075.cnf.txt
}

dpll_unsat
echo "              "
dpll_sat