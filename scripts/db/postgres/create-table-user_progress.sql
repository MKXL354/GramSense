create table USER_PROGRESS
(
    PROGRESS_ID  bigserial     primary key,
    IS_DELETED   boolean       not null default false,
    CREATED_AT   timestamp     not null default now(),
    UPDATED_AT   timestamp,
    GRAMMAR_TYPE smallint      not null,
    MASTERY      NUMERIC(5, 2) not null,
    USER_ID      bigint        not null,
    constraint FK_PROGRESS_USER foreign key (USER_ID) references USER_PROFILE (USER_ID)
);

CREATE INDEX IDX_PROGRESS_LATEST
    ON USER_PROGRESS (USER_ID, GRAMMAR_TYPE, CREATED_AT DESC);
