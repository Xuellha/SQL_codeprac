def solution(numbers, k):
    if (2 * k - 1) % len(numbers) == 0 : 
        answer = len(numbers)
    else : 
        answer = (2 * k - 1) % len(numbers)
    return answer