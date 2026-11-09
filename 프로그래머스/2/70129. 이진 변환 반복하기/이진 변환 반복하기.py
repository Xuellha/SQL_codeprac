def solution(s):
    answer = [0,0]
    num_count1 = 0
    zero_cnt = 0
    cnt = 0
    while s != "1" : 
        zero = s.count("0")
        num_count1 = bin(s.count("1"))[2:]
        zero = s.count("0")
        s = str(num_count1) 
        cnt += 1
        zero_cnt += zero
    answer[0] = cnt
    answer[1] = zero_cnt
    return answer