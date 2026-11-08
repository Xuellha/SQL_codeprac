def solution(seoul):
    answer = ''
    for i in range(len(seoul)) : 
        if seoul[i] == "Kim" : 
            num = i
    answer = "김서방은 " + str(num) + "에 있다"
    return answer