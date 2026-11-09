from collections import Counter

def solution(k, tangerine):
    answer = 0
    a = Counter(tangerine)
    
    for item, count in a.most_common(): 
        k -= count
        answer += 1
        if k <= 0 : 
            break
        
    
    return answer