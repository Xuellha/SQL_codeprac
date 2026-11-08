def solution(s):
    answer = ''
    words = s.split(' ')
    
    for word in words : 
        if len(word) > 0 : 
            if word[0].isalpha() : 
                new_word = word[0].upper() + word[1:].lower()  
            else : 
                new_word = word.lower()
            answer += " " + new_word
        else : 
            answer += " "
    
    return answer[1:]