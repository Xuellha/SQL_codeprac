def solution(s):
    answer = -1
    stack = []
    for char in s : 
        if not stack : 
            stack.append(char)
        elif stack[-1] == char : 
            stack.pop()
        else : 
            stack.append(char)
    if not stack : 
        answer = 1
    else : 
        answer = 0

    return answer