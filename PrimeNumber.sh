/* Prime numbers.

A positive integer n is prime if it is only divisible by 1 and n.
Given: integer n.
If n≤1 then it is not prime and we are done immediately.
If n> 1 we try to d = 2,3, ..., n − 1:
if d divides n we end (not prime).
otherwise, we keep looking.
If we reach the end without finding a divisor: we conclude that n is a prime.

*/

function prime_test(){

    if [[ $1 -eq 2 ]] || [[ $1 -eq 3 ]];  # Test for > 3
    then 
        return 1  # is a number prime
    fi
    
    if [[ $(($1 % 2)) -eq 0 ]] || [[ $(($1 % 3)) -eq 0 ]] || [[ $1 -eq 1 ]]; # Test if remainder <> 0 or number 1 (special)
    then
        return 0  # this is not a number prime
    fi    
    i=5;
    p=2
    
    while [[ $((i * i)) -le $1 ]]; do
        if [[ $(($1 % i)) -eq 0 ]]; #search for a number with remainder = 0
        then
            return 0  # not a prime
        fi
        
        i=$((i + p))
        p=$((6 - p))
    done
  
return 1
}

/* For test:
prime_test 19
if [[ $? -eq 0 ]]; 
  then
  echo "This number is not a prime"
else
  echo "This number is a prime"
fi
*/
