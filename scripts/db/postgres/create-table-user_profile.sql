create table USER_PROFILE
(
    USER_ID         bigserial primary key,
    IS_DELETED      boolean     not null default false,
    CREATED_AT      timestamp   not null default now(),
    UPDATED_AT      timestamp,
    USER_NAME       varchar(50) not null unique,
    HASHED_PASSWORD varchar(255),
    CEFR_LEVEL      smallint    not null
);
