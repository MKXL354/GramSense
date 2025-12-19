create table GRAMMAR_EXAMPLE
(
    GRAMMAR_EXAMPLE_ID bigserial    primary key,
    IS_DELETED         boolean      not null default false,
    CREATED_AT         timestamp    not null default now(),
    UPDATED_AT         timestamp,
    EXAMPLE_TEXT       varchar(100) not null,
    GRAMMAR_TYPE       smallint     not null,
    CEFR_LEVEL         smallint     not null
);

create index IDX_EXAMPLE_GRAMMAR_TYPE
    on GRAMMAR_EXAMPLE (GRAMMAR_TYPE, CEFR_LEVEL);
