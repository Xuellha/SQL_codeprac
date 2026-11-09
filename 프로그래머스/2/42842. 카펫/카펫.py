def solution(brown, yellow):
    answer = []
    for j in range(3, brown // 2) : 
        for i in range(3, brown // 2) : 
            if (i * j == brown + yellow) and ((i-2)*(j-2) == yellow) : 
                answer = [j,i]
    return answer