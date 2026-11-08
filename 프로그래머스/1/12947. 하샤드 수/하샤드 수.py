def solution(x):
    answer = 0
    num = x
    
    while x > 0 : 
        answer += x % 10
        x //= 10
    return num % answer == 0