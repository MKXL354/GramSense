create table FILL_BLANK_EXERCISE
(
    GRAMMAR_EXERCISE_ID bigint primary key,
    QUESTION            text,
    OPTIONS             text,
    ANSWER              text,
    constraint FK_FILL_BLANK_EXERCISE foreign key (GRAMMAR_EXERCISE_ID) references GRAMMAR_EXERCISE (GRAMMAR_EXERCISE_ID)
);
