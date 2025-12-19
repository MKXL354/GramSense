create table GRAMMAR_EXERCISE
(
    GRAMMAR_EXERCISE_ID bigserial primary key,
    IS_DELETED          boolean   not null default false,
    CREATED_AT          timestamp not null default now(),
    UPDATED_AT          timestamp,
    EXERCISE_TYPE       smallint  not null,
    GRAMMAR_TYPE        smallint  not null,
    CEFR_LEVEL          smallint  not null
);

create index IDX_EXERCISE_GRAMMAR_CEFR
    on GRAMMAR_EXERCISE (EXERCISE_TYPE, GRAMMAR_TYPE, CEFR_LEVEL);
