create table MULTI_CHOICE_EXERCISE
(
    GRAMMAR_EXERCISE_ID bigint primary key,
    QUESTION            text,
    OPTIONS             text,
    ANSWER              text,
    constraint FK_MULTI_CHOICE_EXERCISE foreign key (GRAMMAR_EXERCISE_ID) references GRAMMAR_EXERCISE (GRAMMAR_EXERCISE_ID)
);
