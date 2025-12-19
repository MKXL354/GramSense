create table REWRITE_EXERCISE
(
    GRAMMAR_EXERCISE_ID bigint primary key,
    ORIGINAL            text,
    QUESTION            text,
    ANSWER              text,
    constraint FK_REWRITE_EXERCISE foreign key (GRAMMAR_EXERCISE_ID) references GRAMMAR_EXERCISE (GRAMMAR_EXERCISE_ID)
);
