create table FULL_SENTENCE_EXERCISE
(
    GRAMMAR_EXERCISE_ID bigint primary key,
    OPTIONS             text,
    ANSWER              text,
    constraint FK_FULL_SENTENCE_EXERCISE foreign key (GRAMMAR_EXERCISE_ID) references GRAMMAR_EXERCISE (GRAMMAR_EXERCISE_ID)
);
