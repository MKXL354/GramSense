create table USER_EXERCISE_ANSWER
(
    EXERCISE_ANSWER_ID bigserial primary key,
    IS_DELETED         boolean   not null default false,
    CREATED_AT         timestamp not null default now(),
    UPDATED_AT         timestamp,
    IS_CORRECT         boolean,
    USER_ID            bigint    not null,
    EXERCISE_ID        bigint    not null,
    constraint FK_USER_EXERCISE_USER_ID foreign key (USER_ID) references USER_PROFILE (USER_ID),
    constraint FK_USER_EXERCISE_EXERCISE_ID foreign key (EXERCISE_ID) references GRAMMAR_EXERCISE (GRAMMAR_EXERCISE_ID)
);

create index IDX_USER_EXERCISE_ANSWER
    on USER_EXERCISE_ANSWER (USER_ID, EXERCISE_ID);
