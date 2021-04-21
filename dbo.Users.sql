CREATE TABLE [dbo].[Users] (
    [first_name]     VARCHAR (50) NULL,
    [last_name]      VARCHAR (50) NULL,
    [email]          VARCHAR (50) NOT NULL,
    [gender]         VARCHAR (10) NULL,
    [type_of_mentor] VARCHAR (50) NULL,
    [date_of_birth]  DATE         NULL,
    [password]       VARCHAR (30) NULL,
    CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED ([email] ASC)
);