def solution(n):
    answer = n
    
    while(1) : 
        answer+=1
        if str(bin(n)).count("1") == str(bin(answer)).count("1") : 
            break
            
    
    return answer