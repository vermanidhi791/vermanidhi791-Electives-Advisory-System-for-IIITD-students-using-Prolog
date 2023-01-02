hello:- start, reset_answers, find_electives(Electives).

start:- 
    write('This is an Elective Advisory System that suggests you subjects based on your interests, qualities and career goals.'),nl,
	write('.........Welcome to our Advisory System of IIITD..........'),nl,
	write('****Believe in youself and lets find out the best in you****'),nl,
	write('You need to answer few questions so that we can suggest the best course according to your interests and career choice.'),nl,
    write('yey! Lets get started'),nl.

find_electives(Electives) :- subject_suggested(Electives),!.

% Store user answers to be able to track his progress
:- dynamic(progress/2).


reset_answers :-
retract(progress(_, _)),
fail.
reset_answers.

subject_suggested(TAShip):- logic_intution(logic), theory_practical(theory), teaching_interest(y),
write('Since you have interest in teaching domain you can express your knowledge'),nl,
write('You will be good in handling students and planning the classes'),nl,
write('So we recommend you to take these skills forward to take TAship'),nl,    
write('This will help you in your career as well, you can go for further Studies and can become Professor in some prestigiuous college'),nl.

subject_suggested(WARDI):- logic_intution(logic), theory_practical(practical),technology(develop_technology),
write('Since you are good in practical and logical person'),nl,
write('You are a innovative and intutive person'),nl,
write('So we recommend you to take these skills forward and take the WARDI course'),nl,
write('Course Name: Wearable Applications, Research, Devices, Interactions'),nl,    
write('Course Code: DES513'),nl.

 
subject_suggested(ML):- logic_intution(logic), theory_practical(practical),technology(apply_technology), forte(machine_learning), maths(yes),
write('Since you love mathematics and you like applying Technology'),nl,
write('You are good at logical reasoning and moreover you know about Machine Learning'),nl,
write('We recommend you to take Machine Learning course'),nl,
write('Course Name: Machine Learning'),nl, 
write('Course Code: CSE343/CSE543/ECE563'),nl.

    

subject_suggested(MLBA):- logic_intution(logic),
theory_practical(practical), technology(apply_technology), forte(machine_learning),
biology(yes),
write('Since you are having interest in Machine Learning and you like Biology'),nl,
write('We suggest you to take course of Machine Learning for Biomedical Applications'),nl,
write('Course Name: Machine Learning for Biomedical Applications '),nl,     
write('Course Offered to : UG/PG'),nl.
   
  
subject_suggested(GA):- logic_intution(logic), theory_practical(practical),
technology(apply_technology), forte(machine_learning), coding(yes),
write('Since you are good in coding, You are a logical and practical person'),nl,
write('So we recommend you to take these skills forward to take the course of Graduate Algorithms'),nl,
write('Course Name: Graduate Algorithms'),nl,     
write('Course Offered to: PG'),nl,
write('Course Code: CSE525'),nl,   
write('You can be a Algorithm expert'),nl.


subject_suggested(MobileComputing):- logic_intution(logic), theory_practical(practical),
technology(apply_technology), forte(application_development),
write('Since you are logical and practical person'),nl,
write('You have interest in application development also'),nl,
write('So we recommend you to take these skills forward to take course of Mobile Computing'),nl,
write('Course Name: Mobile Computing'),nl,     
write('Course Code: CSE535'),nl.
    
subject_suggested(FCS):- logic_intution(logic), theory_practical(practical),
technology(apply_technology), forte(problem_solving), interest(cyber),
write('Since you are a logical person and practical person'),nl,
write('You are having interest in cyber field'),nl,
write('We suggest that you can try the course of Fundamental of Computer Security'),nl,
write('Course Name: Fundamental of Computer Security'),nl,     
write('Course Code: CSE345 / CSE545'),nl.

subject_suggested(Cloud_Computing):- logic_intution(logic),
theory_practical(practical), technology(apply_technology), forte(problem_solving),
interest(cloud),
write('Since you are a logical and practical perosn and you are having interest in field of cloud and
virtualization'),nl,
write('We suggest that you can try the course of Cloud and Virtualization'),nl,    
write('Course Name:Cloud and Virtualization'),nl,     
write('Course Code	CSE569'),nl.

subject_suggested(DIP):- logic_intution(logic), theory_practical(practical),
technology(apply_technology), forte(problem_solving), interest(image),
write('Since you are logical and practical person and you have interest in fiels of Image
Ananlysis'),nl,
write('We recommend you to take DIP'),nl,    
write('Course Name: Digital Image Processing'),nl,
write('Course Code: CSE340/CSE540/ECE340'),nl.

subject_suggested(CN):- logic_intution(logic), theory_practical(practical),
technology(apply_technology), forte(problem_solving), interest(networking),
write('Since you are logical and practical person and you have interest in fiels of networking'),nl,
write('We recommend you to take DIP'),nl,
write('Course Name: Computer Networks'),nl,
write('Course Code: CSE 232'),nl.

subject_suggested(BDA):- logic_intution(logic), theory_practical(practical),
technology(apply_technology), forte(problem_solving), interest(bigdata),
write('Since you are logical and practical person and you have interest in fiels of Big data'),nl,
write('Course Name: BDA'),nl,    
write('Course Name: Big Data Analytics'),nl,
write('Course Code: CSE557'),nl.

subject_suggested(EK):- logic_intution(logic), theory_practical(practical),
technology(apply_technology), forte(problem_solving), interest(none), startups(yes),
write('Since you are logical and practical person and you have interest in startups '),nl,
write('We recommend you to try out this course : Entrepreneurial Khichadi'),nl,
write('Course Name: Entrepreneurial Khichadi'),nl,
write('Course Code: ENT412'),nl.
                                                                                                                                                                                      
                                                                                   
subject_suggested(OOPD):- logic_intution(logic), theory_practical(practical),
technology(apply_technology), forte(problem_solving), interest(none), startups(no), coding(yes),
write('Since you are logical and practical person and you have interest in coding '),nl,
write('We recommend you to take the course : '),nl,
write('Course Name: Object Oriented Programming and Design'),nl,
write('Course Code: CSE600A/ECE600A'),nl.


subject_suggested(DDV):- logic_intution(intution), creative(yes),
write('Since you are a creative and innovative person'),nl,
write('We recommend you to try out this course : DDV'),nl,
write('Course Name: DESIGN DRAWING & VISUALIZATION'),nl,
write('Couse code: DES101'),nl.
  

subject_suggested(ES):- logic_intution(intution), creative(no),learner(yes),
write('Since you are intutive person and a good learner, you can take any non-technical subjects'),nl,
write('We recommend you to take the course : Environmental Sciences '),nl,
write('Course Name: Environmental Sciences'),nl,
write('Couse code: ESC205A'),nl.

subject_suggested(default):- write('Sorry. We cannot help you right now.'),nl,
write('We recommend you to take a break and explore your interest in depth'),nl.


question(logic_intution) :-write('Your general approach to solve problem is logical or intutive?'), nl.
question(teaching_interest) :-write('Do you have interest in teaching?'), nl.
question(interest) :- write('In which of the domain you have interest, choose any
one?'), nl.
question(coding) :-write('Do you love coding?'), nl.
question(maths) :-write('Do you like mathematics?'), nl.
question(biology) :-write('Do you like Biology?'), nl.
question(theory_practical) :-write('Do you enjoy being theoritical or want to do things
practically?'), nl.
question(technology) :-write('Do you prefer to apply the existing technology or develop new
technology?'), nl.
question(forte) :-write('In which of the following fields, you are comfortable?'), nl.
question(learner) :-write('Do you want to learn more and more things life long?'), nl.
question(creative) :-write('Are you a creative person liking arts and patterns?'), nl.
question(startups) :- write('Do you have interest in Startups and Enterprenurship?'), nl.

answer(logic):-write('logic').
answer(intution):-write('Intution').
answer(y):- write('yes').
answer(n):- write('no').
answer(cyber):-write('cyber').
answer(cloud):-write('cloud').
answer(network):-write('network').
answer(image):-write('image').
answer(bigdata):-write('bigdata').
answer(none):-write('none').
answer(theory):-write('I like being theoritical').
answer(practical):-write('I like to do things Practically').
answer(apply_technology):-write('I like to apply technology').
answer(develop_technology):-write('I like to develop technology').
answer(machine_learning):- write('I am having some knoweledge of Machine Learning and have interest in it').
answer(application_development):- write('I am having interest in Application Development').
answer(problem_solving):- write('I am good at Problem Solving').
answer(yes):-write('yes').
answer(no):-write('no').
logic_intution(Answer):- progress(logic_intution, Answer).
logic_intution(Answer):- \+ progress(logic_intution, _), ask(logic_intution, Answer, [logic,
intution]).
teaching_interest(Answer):- progress(teaching_interest, Answer).
teaching_interest(Answer):- \+ progress(teaching_interest, _), ask(teaching_interest, Answer, [y, n]).
interest(Answer):- progress(interest, Answer).
interest(Answer):- \+ progress(interest, _), ask(interest, Answer, [cyber, cloud,
network,image, bigdata, none]).
coding(Answer):- progress(coding, Answer).
coding(Answer):- \+ progress(coding, _), ask(coding, Answer, [yes, no]).
maths(Answer):- progress(maths, Answer).
maths(Answer):- \+ progress(maths, _), ask(maths, Answer, [yes, no]).
biology(Answer):- progress(biology, Answer).
biology(Answer):- \+ progress(biology, _), ask(biology, Answer, [yes, no]).
theory_practical(Answer):- progress(theory_practical, Answer).
theory_practical(Answer):- \+ progress(theory_practical, _), ask(theory_practical, Answer,
[theory, practical]).
technology(Answer):- progress(technology, Answer).
technology(Answer):- \+ progress(technology, _), ask(technology, Answer, [apply_technology,
develop_technology]).
forte(Answer):- progress(forte, Answer).
forte(Answer):- \+ progress(forte, _), ask(forte, Answer, [machine_learning,
application_development, problem_solving, none]).
learner(Answer):- progress(learner, Answer).
learner(Answer):- \+ progress(learner, _), ask(learner, Answer, [yes, no]).
creative(Answer):- progress(creative, Answer).
creative(Answer):- \+ progress(creative, _), ask(creative, Answer, [yes, no]).
startups(Answer):- progress(startups, Answer).
startups(Answer):- \+ progress(startups, _), ask(startups, Answer, [yes, no]).
answers([], _).
answers([First|Rest], Index) :- write(Index), write(' '), answer(First), nl, NextIndex is Index + 1,
answers(Rest, NextIndex).
parse(0, [First|_], First).
parse(Index, [First|Rest], Response) :-Index > 0, NextIndex is Index - 1, parse(NextIndex, Rest,
Response).
ask(Question, Answer, Choices) :- question(Question), answers(Choices, 0), read(Index),
parse(Index, Choices, Response), asserta(progress(Question, Response)), Response =
Answer.















    
    

    



 
    
    
    
    
    
    
    