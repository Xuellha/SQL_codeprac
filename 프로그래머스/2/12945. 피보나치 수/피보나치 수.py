def solution(n):
    answer = 0
    f_0 = 0
    f_1 = 1

    for i in range(n-1) : 
        f_2 = f_0 + f_1
        f_0 = f_1
        f_1 = f_2
        
    answer = f_2 % 1234567 
    
    return answer