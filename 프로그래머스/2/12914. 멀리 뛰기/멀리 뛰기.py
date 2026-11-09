def solution(n):
    answer = 0
    
    if n <= 2 : 
        answer = n
        
    a,b = 1, 2
    for _ in range(3, n+1) : 
        a, b = b, a+b
        answer = b
    return answer % 1234567