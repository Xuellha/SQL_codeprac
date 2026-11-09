def solution(n):
    answer = 0
    for i in range(1,n+1) : 
        curr_sum = 0
        j = i
        while curr_sum < n : 
            curr_sum += j
            j += 1
        if curr_sum == n : 
            answer += 1 
    return answer