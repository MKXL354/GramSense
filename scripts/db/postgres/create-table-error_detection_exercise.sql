create table ERROR_DETECTION_EXERCISE
(
    GRAMMAR_EXERCISE_ID bigint primary key,
    QUESTION            text,
    ANSWER              text,
    constraint FK_ERROR_DETECTION_EXERCISE foreign key (GRAMMAR_EXERCISE_ID) references GRAMMAR_EXERCISE (GRAMMAR_EXERCISE_ID)
);
