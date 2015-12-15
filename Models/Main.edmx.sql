
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 11/16/2015 13:09:00
-- Generated from EDMX file: C:\builds\mf\mf-frontend\mf-frontend\Models\Main.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [mf];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_tb_content_tb_lang]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tb_content] DROP CONSTRAINT [FK_tb_content_tb_lang];
GO
IF OBJECT_ID(N'[dbo].[FK_tb_file_on_page_tb_content]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tb_file_on_page] DROP CONSTRAINT [FK_tb_file_on_page_tb_content];
GO
IF OBJECT_ID(N'[dbo].[FK_tb_courses_tb_courses_status]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tb_courses] DROP CONSTRAINT [FK_tb_courses_tb_courses_status];
GO
IF OBJECT_ID(N'[dbo].[FK_tb_dc_tb_dc_type]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tb_dc] DROP CONSTRAINT [FK_tb_dc_tb_dc_type];
GO
IF OBJECT_ID(N'[dbo].[FK_tb_dc_type_tb_lang]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tb_dc_type] DROP CONSTRAINT [FK_tb_dc_type_tb_lang];
GO
IF OBJECT_ID(N'[dbo].[FK_tb_file_on_page_tb_files]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tb_file_on_page] DROP CONSTRAINT [FK_tb_file_on_page_tb_files];
GO
IF OBJECT_ID(N'[dbo].[FK_tb_files_tb_files_category]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tb_files] DROP CONSTRAINT [FK_tb_files_tb_files_category];
GO
IF OBJECT_ID(N'[dbo].[FK_tb_files_tb_lang]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tb_files] DROP CONSTRAINT [FK_tb_files_tb_lang];
GO
IF OBJECT_ID(N'[dbo].[FK_tb_files_category_tb_lang]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tb_files_category] DROP CONSTRAINT [FK_tb_files_category_tb_lang];
GO
IF OBJECT_ID(N'[dbo].[FK_tb_gallery_tb_gallery_category]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tb_gallery] DROP CONSTRAINT [FK_tb_gallery_tb_gallery_category];
GO
IF OBJECT_ID(N'[dbo].[FK_tb_news_type_tb_lang]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tb_news_type] DROP CONSTRAINT [FK_tb_news_type_tb_lang];
GO
IF OBJECT_ID(N'[dbo].[FK_tb_question_categorys_tb_lang]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tb_question_categorys] DROP CONSTRAINT [FK_tb_question_categorys_tb_lang];
GO
IF OBJECT_ID(N'[dbo].[FK_tb_question_sub_categorys_tb_lang]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tb_question_sub_categorys] DROP CONSTRAINT [FK_tb_question_sub_categorys_tb_lang];
GO
IF OBJECT_ID(N'[dbo].[FK_tb_news_tb_news_type]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tb_news] DROP CONSTRAINT [FK_tb_news_tb_news_type];
GO
IF OBJECT_ID(N'[dbo].[FK_tb_prints_content_tb_prints]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tb_prints_content] DROP CONSTRAINT [FK_tb_prints_content_tb_prints];
GO
IF OBJECT_ID(N'[dbo].[FK_tb_subscription_request_tb_prints]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tb_subscription_request] DROP CONSTRAINT [FK_tb_subscription_request_tb_prints];
GO
IF OBJECT_ID(N'[dbo].[FK_tb_questions_tb_question_categorys]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tb_questions] DROP CONSTRAINT [FK_tb_questions_tb_question_categorys];
GO
IF OBJECT_ID(N'[dbo].[FK_tb_questions_tb_question_sub_categorys]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tb_questions] DROP CONSTRAINT [FK_tb_questions_tb_question_sub_categorys];
GO
IF OBJECT_ID(N'[dbo].[FK_tb_user_in_role_tb_user_roles]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tb_user_in_role] DROP CONSTRAINT [FK_tb_user_in_role_tb_user_roles];
GO
IF OBJECT_ID(N'[dbo].[FK_tb_user_in_role_tb_users]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tb_user_in_role] DROP CONSTRAINT [FK_tb_user_in_role_tb_users];
GO
IF OBJECT_ID(N'[dbo].[FK_tb_question_request_tb_question_sub_categorys]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tb_question_request] DROP CONSTRAINT [FK_tb_question_request_tb_question_sub_categorys];
GO
IF OBJECT_ID(N'[dbo].[FK_tb_organizationtb_files]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tb_files] DROP CONSTRAINT [FK_tb_organizationtb_files];
GO
IF OBJECT_ID(N'[dbo].[FK_tb_organizationtb_structure_organization]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tb_structure_organization] DROP CONSTRAINT [FK_tb_organizationtb_structure_organization];
GO
IF OBJECT_ID(N'[dbo].[FK_tb_organizationtb_dc]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tb_dc] DROP CONSTRAINT [FK_tb_organizationtb_dc];
GO
IF OBJECT_ID(N'[dbo].[FK_tb_organizationtb_tasks]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tb_tasks] DROP CONSTRAINT [FK_tb_organizationtb_tasks];
GO
IF OBJECT_ID(N'[dbo].[FK_tb_organizationtb_about_organization]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tb_about_organization] DROP CONSTRAINT [FK_tb_organizationtb_about_organization];
GO
IF OBJECT_ID(N'[dbo].[FK_tb_organizationtb_news]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tb_news] DROP CONSTRAINT [FK_tb_organizationtb_news];
GO
IF OBJECT_ID(N'[dbo].[FK_tb_regiontb_organization]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tb_organization] DROP CONSTRAINT [FK_tb_regiontb_organization];
GO
IF OBJECT_ID(N'[dbo].[FK_tb_langtb_tasks]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tb_tasks] DROP CONSTRAINT [FK_tb_langtb_tasks];
GO
IF OBJECT_ID(N'[dbo].[FK_tb_langtb_about_organization]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tb_about_organization] DROP CONSTRAINT [FK_tb_langtb_about_organization];
GO
IF OBJECT_ID(N'[dbo].[FK_tb_langtb_structure_organization]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tb_structure_organization] DROP CONSTRAINT [FK_tb_langtb_structure_organization];
GO
IF OBJECT_ID(N'[dbo].[FK_tb_langtb_organization]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tb_organization] DROP CONSTRAINT [FK_tb_langtb_organization];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[sysdiagrams]', 'U') IS NOT NULL
    DROP TABLE [dbo].[sysdiagrams];
GO
IF OBJECT_ID(N'[dbo].[tb_ads_request]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tb_ads_request];
GO
IF OBJECT_ID(N'[dbo].[tb_content]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tb_content];
GO
IF OBJECT_ID(N'[dbo].[tb_courses]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tb_courses];
GO
IF OBJECT_ID(N'[dbo].[tb_courses_status]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tb_courses_status];
GO
IF OBJECT_ID(N'[dbo].[tb_dc]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tb_dc];
GO
IF OBJECT_ID(N'[dbo].[tb_dc_type]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tb_dc_type];
GO
IF OBJECT_ID(N'[dbo].[tb_donors]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tb_donors];
GO
IF OBJECT_ID(N'[dbo].[tb_file_on_page]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tb_file_on_page];
GO
IF OBJECT_ID(N'[dbo].[tb_files]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tb_files];
GO
IF OBJECT_ID(N'[dbo].[tb_files_category]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tb_files_category];
GO
IF OBJECT_ID(N'[dbo].[tb_gallery]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tb_gallery];
GO
IF OBJECT_ID(N'[dbo].[tb_gallery_category]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tb_gallery_category];
GO
IF OBJECT_ID(N'[dbo].[tb_lang]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tb_lang];
GO
IF OBJECT_ID(N'[dbo].[tb_news]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tb_news];
GO
IF OBJECT_ID(N'[dbo].[tb_news_type]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tb_news_type];
GO
IF OBJECT_ID(N'[dbo].[tb_pages]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tb_pages];
GO
IF OBJECT_ID(N'[dbo].[tb_prints]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tb_prints];
GO
IF OBJECT_ID(N'[dbo].[tb_prints_content]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tb_prints_content];
GO
IF OBJECT_ID(N'[dbo].[tb_projects]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tb_projects];
GO
IF OBJECT_ID(N'[dbo].[tb_question_categorys]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tb_question_categorys];
GO
IF OBJECT_ID(N'[dbo].[tb_question_sub_categorys]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tb_question_sub_categorys];
GO
IF OBJECT_ID(N'[dbo].[tb_questions]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tb_questions];
GO
IF OBJECT_ID(N'[dbo].[tb_subscription_request]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tb_subscription_request];
GO
IF OBJECT_ID(N'[dbo].[tb_user_in_role]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tb_user_in_role];
GO
IF OBJECT_ID(N'[dbo].[tb_user_roles]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tb_user_roles];
GO
IF OBJECT_ID(N'[dbo].[tb_users]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tb_users];
GO
IF OBJECT_ID(N'[dbo].[tb_subscription_news_request]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tb_subscription_news_request];
GO
IF OBJECT_ID(N'[dbo].[tb_question_request]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tb_question_request];
GO
IF OBJECT_ID(N'[dbo].[tb_organization]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tb_organization];
GO
IF OBJECT_ID(N'[dbo].[tb_tasks]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tb_tasks];
GO
IF OBJECT_ID(N'[dbo].[tb_about_organization]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tb_about_organization];
GO
IF OBJECT_ID(N'[dbo].[tb_structure_organization]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tb_structure_organization];
GO
IF OBJECT_ID(N'[dbo].[tb_region]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tb_region];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'sysdiagrams'
CREATE TABLE [dbo].[sysdiagrams] (
    [name] nvarchar(128)  NOT NULL,
    [principal_id] int  NOT NULL,
    [diagram_id] int IDENTITY(1,1) NOT NULL,
    [version] int  NULL,
    [definition] varbinary(max)  NULL
);
GO

-- Creating table 'tb_ads_request'
CREATE TABLE [dbo].[tb_ads_request] (
    [id] int IDENTITY(1,1) NOT NULL,
    [fio] nvarchar(512)  NULL,
    [organization] nvarchar(512)  NULL,
    [phone] nvarchar(32)  NULL,
    [create_date] datetime  NULL,
    [is_active] bit  NOT NULL
);
GO

-- Creating table 'tb_content'
CREATE TABLE [dbo].[tb_content] (
    [id] int IDENTITY(1,1) NOT NULL,
    [main_id] int  NOT NULL,
    [name] nvarchar(256)  NOT NULL,
    [fixed_url] nvarchar(256)  NULL,
    [page_title] nvarchar(256)  NULL,
    [description] nvarchar(2048)  NULL,
    [page_content] nvarchar(max)  NULL,
    [order_id] int  NULL,
    [is_active] bit  NOT NULL,
    [show_on_menu] bit  NULL,
    [lang_id] int  NOT NULL
);
GO

-- Creating table 'tb_courses'
CREATE TABLE [dbo].[tb_courses] (
    [id] int IDENTITY(1,1) NOT NULL,
    [name] nvarchar(64)  NOT NULL,
    [description] nvarchar(512)  NULL,
    [value] nvarchar(32)  NULL,
    [status_id] int  NULL,
    [is_active] bit  NOT NULL
);
GO

-- Creating table 'tb_courses_status'
CREATE TABLE [dbo].[tb_courses_status] (
    [id] int IDENTITY(1,1) NOT NULL,
    [name] nvarchar(32)  NULL
);
GO

-- Creating table 'tb_dc'
CREATE TABLE [dbo].[tb_dc] (
    [id] int IDENTITY(1,1) NOT NULL,
    [create_date] datetime  NOT NULL,
    [title] nvarchar(256)  NOT NULL,
    [description] nvarchar(2048)  NOT NULL,
    [image] nvarchar(256)  NOT NULL,
    [type_id] int  NOT NULL,
    [is_active] bit  NOT NULL,
    [tb_organization_Id] int  NOT NULL
);
GO

-- Creating table 'tb_dc_type'
CREATE TABLE [dbo].[tb_dc_type] (
    [id] int IDENTITY(1,1) NOT NULL,
    [name] nvarchar(256)  NOT NULL,
    [lang] int  NOT NULL,
    [is_active] bit  NOT NULL
);
GO

-- Creating table 'tb_donors'
CREATE TABLE [dbo].[tb_donors] (
    [id] int IDENTITY(1,1) NOT NULL,
    [logo] nvarchar(128)  NULL,
    [name] nvarchar(1024)  NULL,
    [description] nvarchar(max)  NULL,
    [contacts] nvarchar(1024)  NULL,
    [is_active] bit  NOT NULL
);
GO

-- Creating table 'tb_file_on_page'
CREATE TABLE [dbo].[tb_file_on_page] (
    [id] int IDENTITY(1,1) NOT NULL,
    [file_id] int  NOT NULL,
    [content_page_id] int  NOT NULL
);
GO

-- Creating table 'tb_files'
CREATE TABLE [dbo].[tb_files] (
    [id] int IDENTITY(1,1) NOT NULL,
    [date_create] datetime  NOT NULL,
    [category_id] int  NOT NULL,
    [title] nvarchar(max)  NOT NULL,
    [description] nvarchar(max)  NULL,
    [file_name] nvarchar(256)  NOT NULL,
    [lang_id] int  NOT NULL,
    [public_date] datetime  NULL,
    [is_main] bit  NOT NULL,
    [is_active] bit  NOT NULL,
    [tb_organization_Id] int  NOT NULL
);
GO

-- Creating table 'tb_files_category'
CREATE TABLE [dbo].[tb_files_category] (
    [id] int IDENTITY(1,1) NOT NULL,
    [name] nvarchar(256)  NOT NULL,
    [is_menu] bit  NOT NULL,
    [lang] int  NOT NULL,
    [is_active] bit  NOT NULL
);
GO

-- Creating table 'tb_gallery'
CREATE TABLE [dbo].[tb_gallery] (
    [id] int IDENTITY(1,1) NOT NULL,
    [title] nvarchar(1024)  NOT NULL,
    [description] nvarchar(max)  NULL,
    [image] nvarchar(256)  NOT NULL,
    [category_id] int  NOT NULL,
    [is_active] bit  NOT NULL
);
GO

-- Creating table 'tb_gallery_category'
CREATE TABLE [dbo].[tb_gallery_category] (
    [id] int IDENTITY(1,1) NOT NULL,
    [name] nvarchar(256)  NOT NULL,
    [order_id] int  NULL,
    [image] nvarchar(512)  NULL,
    [is_active] bit  NOT NULL
);
GO

-- Creating table 'tb_lang'
CREATE TABLE [dbo].[tb_lang] (
    [id] int IDENTITY(1,1) NOT NULL,
    [name] nvarchar(64)  NULL,
    [code] nvarchar(2)  NULL,
    [is_active] bit  NOT NULL
);
GO

-- Creating table 'tb_news'
CREATE TABLE [dbo].[tb_news] (
    [id] int IDENTITY(1,1) NOT NULL,
    [title] nvarchar(1024)  NOT NULL,
    [descriptoin] nvarchar(2024)  NOT NULL,
    [text] nvarchar(max)  NOT NULL,
    [image] nvarchar(1024)  NULL,
    [create_date] datetime  NOT NULL,
    [event_date] datetime  NOT NULL,
    [type_id] int  NOT NULL,
    [is_active] bit  NOT NULL,
    [tb_organization_Id] int  NOT NULL
);
GO

-- Creating table 'tb_news_type'
CREATE TABLE [dbo].[tb_news_type] (
    [id] int IDENTITY(1,1) NOT NULL,
    [name] nvarchar(32)  NOT NULL,
    [description] nvarchar(512)  NULL,
    [is_active] bit  NOT NULL,
    [show_on_main] bit  NOT NULL,
    [lang] int  NOT NULL
);
GO

-- Creating table 'tb_pages'
CREATE TABLE [dbo].[tb_pages] (
    [id] int IDENTITY(1,1) NOT NULL,
    [main_category_id] int  NULL,
    [name] nvarchar(128)  NULL,
    [description] nvarchar(2048)  NULL,
    [is_active] bit  NULL
);
GO

-- Creating table 'tb_prints'
CREATE TABLE [dbo].[tb_prints] (
    [id] int IDENTITY(1,1) NOT NULL,
    [name] nvarchar(512)  NOT NULL,
    [image] nvarchar(512)  NULL,
    [description] nvarchar(max)  NOT NULL,
    [text] nvarchar(max)  NULL,
    [published_since] datetime  NULL,
    [is_active] bit  NOT NULL
);
GO

-- Creating table 'tb_prints_content'
CREATE TABLE [dbo].[tb_prints_content] (
    [id] int IDENTITY(1,1) NOT NULL,
    [year] int  NULL,
    [month] int  NULL,
    [date_print] datetime  NULL,
    [image] nvarchar(512)  NULL,
    [text] nvarchar(max)  NULL,
    [prints_id] int  NULL,
    [is_active] bit  NOT NULL
);
GO

-- Creating table 'tb_projects'
CREATE TABLE [dbo].[tb_projects] (
    [id] int IDENTITY(1,1) NOT NULL,
    [name] nvarchar(1024)  NOT NULL,
    [description] nvarchar(max)  NOT NULL,
    [full_text] nvarchar(max)  NOT NULL,
    [is_active] bit  NOT NULL
);
GO

-- Creating table 'tb_question_categorys'
CREATE TABLE [dbo].[tb_question_categorys] (
    [id] int IDENTITY(1,1) NOT NULL,
    [show_on_the_main] bit  NOT NULL,
    [name] nvarchar(256)  NOT NULL,
    [image] nvarchar(1024)  NULL,
    [description] nvarchar(2048)  NULL,
    [lang] int  NOT NULL,
    [is_active] bit  NOT NULL
);
GO

-- Creating table 'tb_question_sub_categorys'
CREATE TABLE [dbo].[tb_question_sub_categorys] (
    [id] int IDENTITY(1,1) NOT NULL,
    [name] nvarchar(32)  NOT NULL,
    [lang] int  NOT NULL,
    [is_active] bit  NOT NULL
);
GO

-- Creating table 'tb_questions'
CREATE TABLE [dbo].[tb_questions] (
    [id] int IDENTITY(1,1) NOT NULL,
    [category_id] int  NOT NULL,
    [category_sub_id] int  NOT NULL,
    [date_create] datetime  NULL,
    [question_title] nvarchar(1024)  NOT NULL,
    [question_date] datetime  NULL,
    [question] nvarchar(max)  NOT NULL,
    [question_author_fio] nvarchar(1024)  NULL,
    [question_author_email] nvarchar(1024)  NULL,
    [answer_date] datetime  NULL,
    [answer_author_fio] nvarchar(1024)  NULL,
    [answer_author_position] nvarchar(1024)  NULL,
    [answer] nvarchar(max)  NULL,
    [is_active] bit  NOT NULL
);
GO

-- Creating table 'tb_subscription_request'
CREATE TABLE [dbo].[tb_subscription_request] (
    [id] int IDENTITY(1,1) NOT NULL,
    [fio] nvarchar(512)  NULL,
    [email] nvarchar(512)  NULL,
    [organization] nvarchar(1024)  NULL,
    [position] nvarchar(512)  NULL,
    [phone] nvarchar(32)  NULL,
    [print_id] int  NULL,
    [create_date] datetime  NULL,
    [is_active] bit  NOT NULL
);
GO

-- Creating table 'tb_user_in_role'
CREATE TABLE [dbo].[tb_user_in_role] (
    [id] int IDENTITY(1,1) NOT NULL,
    [user_id] int  NOT NULL,
    [role_id] int  NOT NULL
);
GO

-- Creating table 'tb_user_roles'
CREATE TABLE [dbo].[tb_user_roles] (
    [id] int IDENTITY(1,1) NOT NULL,
    [name] nvarchar(64)  NOT NULL,
    [description] nvarchar(512)  NULL,
    [is_active] bit  NOT NULL
);
GO

-- Creating table 'tb_users'
CREATE TABLE [dbo].[tb_users] (
    [id] int IDENTITY(1,1) NOT NULL,
    [fio] nvarchar(256)  NOT NULL,
    [email] nvarchar(256)  NOT NULL,
    [password] nvarchar(256)  NOT NULL,
    [is_active] bit  NOT NULL
);
GO

-- Creating table 'tb_subscription_news_request'
CREATE TABLE [dbo].[tb_subscription_news_request] (
    [id] int IDENTITY(1,1) NOT NULL,
    [fio] nvarchar(512)  NULL,
    [email] nvarchar(512)  NULL,
    [organization] nvarchar(1024)  NULL,
    [position] nvarchar(512)  NULL,
    [phone] nvarchar(32)  NULL,
    [create_date] datetime  NULL,
    [is_active] bit  NOT NULL
);
GO

-- Creating table 'tb_question_request'
CREATE TABLE [dbo].[tb_question_request] (
    [id] int IDENTITY(1,1) NOT NULL,
    [fio] nvarchar(256)  NULL,
    [organization] nvarchar(256)  NULL,
    [position] nvarchar(256)  NULL,
    [phone] nvarchar(256)  NULL,
    [email] nvarchar(256)  NULL,
    [category_id] int  NULL,
    [question] nvarchar(max)  NULL,
    [is_active] bit  NOT NULL,
    [create_date] datetime  NULL
);
GO

-- Creating table 'tb_organization'
CREATE TABLE [dbo].[tb_organization] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [name] nvarchar(max)  NOT NULL,
    [link] nvarchar(max)  NOT NULL,
    [index] nvarchar(max)  NOT NULL,
    [tb_region_Id] int  NOT NULL,
    [tb_lang_id] int  NOT NULL
);
GO

-- Creating table 'tb_tasks'
CREATE TABLE [dbo].[tb_tasks] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [text] nvarchar(max)  NOT NULL,
    [is_active] bit  NOT NULL,
    [tb_organization_Id] int  NOT NULL,
    [tb_lang_id] int  NOT NULL
);
GO

-- Creating table 'tb_about_organization'
CREATE TABLE [dbo].[tb_about_organization] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [address] nvarchar(max)  NOT NULL,
    [full_name] nvarchar(max)  NOT NULL,
    [short_name] nvarchar(max)  NOT NULL,
    [code] nvarchar(max)  NOT NULL,
    [site] nvarchar(max)  NOT NULL,
    [phone] nvarchar(max)  NOT NULL,
    [email] nvarchar(max)  NOT NULL,
    [is_active] bit  NOT NULL,
    [tb_organization_Id] int  NOT NULL,
    [tb_lang_id] int  NOT NULL
);
GO

-- Creating table 'tb_structure_organization'
CREATE TABLE [dbo].[tb_structure_organization] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [name_director] nvarchar(max)  NOT NULL,
    [last_name_director] nvarchar(max)  NOT NULL,
    [full_name_director] nvarchar(max)  NOT NULL,
    [picture_director] nvarchar(max)  NOT NULL,
    [bio_director] nvarchar(max)  NOT NULL,
    [text_for_nachalniki] nvarchar(max)  NOT NULL,
    [is_active] bit  NOT NULL,
    [tb_organization_Id] int  NOT NULL,
    [tb_lang_id] int  NOT NULL
);
GO

-- Creating table 'tb_region'
CREATE TABLE [dbo].[tb_region] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [name_tj] nvarchar(max)  NOT NULL,
    [name_ru] nvarchar(max)  NOT NULL,
    [name_en] nvarchar(max)  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [diagram_id] in table 'sysdiagrams'
ALTER TABLE [dbo].[sysdiagrams]
ADD CONSTRAINT [PK_sysdiagrams]
    PRIMARY KEY CLUSTERED ([diagram_id] ASC);
GO

-- Creating primary key on [id] in table 'tb_ads_request'
ALTER TABLE [dbo].[tb_ads_request]
ADD CONSTRAINT [PK_tb_ads_request]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'tb_content'
ALTER TABLE [dbo].[tb_content]
ADD CONSTRAINT [PK_tb_content]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'tb_courses'
ALTER TABLE [dbo].[tb_courses]
ADD CONSTRAINT [PK_tb_courses]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'tb_courses_status'
ALTER TABLE [dbo].[tb_courses_status]
ADD CONSTRAINT [PK_tb_courses_status]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'tb_dc'
ALTER TABLE [dbo].[tb_dc]
ADD CONSTRAINT [PK_tb_dc]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'tb_dc_type'
ALTER TABLE [dbo].[tb_dc_type]
ADD CONSTRAINT [PK_tb_dc_type]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'tb_donors'
ALTER TABLE [dbo].[tb_donors]
ADD CONSTRAINT [PK_tb_donors]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'tb_file_on_page'
ALTER TABLE [dbo].[tb_file_on_page]
ADD CONSTRAINT [PK_tb_file_on_page]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'tb_files'
ALTER TABLE [dbo].[tb_files]
ADD CONSTRAINT [PK_tb_files]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'tb_files_category'
ALTER TABLE [dbo].[tb_files_category]
ADD CONSTRAINT [PK_tb_files_category]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'tb_gallery'
ALTER TABLE [dbo].[tb_gallery]
ADD CONSTRAINT [PK_tb_gallery]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'tb_gallery_category'
ALTER TABLE [dbo].[tb_gallery_category]
ADD CONSTRAINT [PK_tb_gallery_category]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'tb_lang'
ALTER TABLE [dbo].[tb_lang]
ADD CONSTRAINT [PK_tb_lang]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'tb_news'
ALTER TABLE [dbo].[tb_news]
ADD CONSTRAINT [PK_tb_news]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'tb_news_type'
ALTER TABLE [dbo].[tb_news_type]
ADD CONSTRAINT [PK_tb_news_type]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'tb_pages'
ALTER TABLE [dbo].[tb_pages]
ADD CONSTRAINT [PK_tb_pages]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'tb_prints'
ALTER TABLE [dbo].[tb_prints]
ADD CONSTRAINT [PK_tb_prints]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'tb_prints_content'
ALTER TABLE [dbo].[tb_prints_content]
ADD CONSTRAINT [PK_tb_prints_content]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'tb_projects'
ALTER TABLE [dbo].[tb_projects]
ADD CONSTRAINT [PK_tb_projects]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'tb_question_categorys'
ALTER TABLE [dbo].[tb_question_categorys]
ADD CONSTRAINT [PK_tb_question_categorys]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'tb_question_sub_categorys'
ALTER TABLE [dbo].[tb_question_sub_categorys]
ADD CONSTRAINT [PK_tb_question_sub_categorys]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'tb_questions'
ALTER TABLE [dbo].[tb_questions]
ADD CONSTRAINT [PK_tb_questions]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'tb_subscription_request'
ALTER TABLE [dbo].[tb_subscription_request]
ADD CONSTRAINT [PK_tb_subscription_request]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'tb_user_in_role'
ALTER TABLE [dbo].[tb_user_in_role]
ADD CONSTRAINT [PK_tb_user_in_role]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'tb_user_roles'
ALTER TABLE [dbo].[tb_user_roles]
ADD CONSTRAINT [PK_tb_user_roles]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'tb_users'
ALTER TABLE [dbo].[tb_users]
ADD CONSTRAINT [PK_tb_users]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'tb_subscription_news_request'
ALTER TABLE [dbo].[tb_subscription_news_request]
ADD CONSTRAINT [PK_tb_subscription_news_request]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'tb_question_request'
ALTER TABLE [dbo].[tb_question_request]
ADD CONSTRAINT [PK_tb_question_request]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [Id] in table 'tb_organization'
ALTER TABLE [dbo].[tb_organization]
ADD CONSTRAINT [PK_tb_organization]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'tb_tasks'
ALTER TABLE [dbo].[tb_tasks]
ADD CONSTRAINT [PK_tb_tasks]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'tb_about_organization'
ALTER TABLE [dbo].[tb_about_organization]
ADD CONSTRAINT [PK_tb_about_organization]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'tb_structure_organization'
ALTER TABLE [dbo].[tb_structure_organization]
ADD CONSTRAINT [PK_tb_structure_organization]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'tb_region'
ALTER TABLE [dbo].[tb_region]
ADD CONSTRAINT [PK_tb_region]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [lang_id] in table 'tb_content'
ALTER TABLE [dbo].[tb_content]
ADD CONSTRAINT [FK_tb_content_tb_lang]
    FOREIGN KEY ([lang_id])
    REFERENCES [dbo].[tb_lang]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tb_content_tb_lang'
CREATE INDEX [IX_FK_tb_content_tb_lang]
ON [dbo].[tb_content]
    ([lang_id]);
GO

-- Creating foreign key on [content_page_id] in table 'tb_file_on_page'
ALTER TABLE [dbo].[tb_file_on_page]
ADD CONSTRAINT [FK_tb_file_on_page_tb_content]
    FOREIGN KEY ([content_page_id])
    REFERENCES [dbo].[tb_content]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tb_file_on_page_tb_content'
CREATE INDEX [IX_FK_tb_file_on_page_tb_content]
ON [dbo].[tb_file_on_page]
    ([content_page_id]);
GO

-- Creating foreign key on [status_id] in table 'tb_courses'
ALTER TABLE [dbo].[tb_courses]
ADD CONSTRAINT [FK_tb_courses_tb_courses_status]
    FOREIGN KEY ([status_id])
    REFERENCES [dbo].[tb_courses_status]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tb_courses_tb_courses_status'
CREATE INDEX [IX_FK_tb_courses_tb_courses_status]
ON [dbo].[tb_courses]
    ([status_id]);
GO

-- Creating foreign key on [type_id] in table 'tb_dc'
ALTER TABLE [dbo].[tb_dc]
ADD CONSTRAINT [FK_tb_dc_tb_dc_type]
    FOREIGN KEY ([type_id])
    REFERENCES [dbo].[tb_dc_type]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tb_dc_tb_dc_type'
CREATE INDEX [IX_FK_tb_dc_tb_dc_type]
ON [dbo].[tb_dc]
    ([type_id]);
GO

-- Creating foreign key on [lang] in table 'tb_dc_type'
ALTER TABLE [dbo].[tb_dc_type]
ADD CONSTRAINT [FK_tb_dc_type_tb_lang]
    FOREIGN KEY ([lang])
    REFERENCES [dbo].[tb_lang]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tb_dc_type_tb_lang'
CREATE INDEX [IX_FK_tb_dc_type_tb_lang]
ON [dbo].[tb_dc_type]
    ([lang]);
GO

-- Creating foreign key on [file_id] in table 'tb_file_on_page'
ALTER TABLE [dbo].[tb_file_on_page]
ADD CONSTRAINT [FK_tb_file_on_page_tb_files]
    FOREIGN KEY ([file_id])
    REFERENCES [dbo].[tb_files]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tb_file_on_page_tb_files'
CREATE INDEX [IX_FK_tb_file_on_page_tb_files]
ON [dbo].[tb_file_on_page]
    ([file_id]);
GO

-- Creating foreign key on [category_id] in table 'tb_files'
ALTER TABLE [dbo].[tb_files]
ADD CONSTRAINT [FK_tb_files_tb_files_category]
    FOREIGN KEY ([category_id])
    REFERENCES [dbo].[tb_files_category]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tb_files_tb_files_category'
CREATE INDEX [IX_FK_tb_files_tb_files_category]
ON [dbo].[tb_files]
    ([category_id]);
GO

-- Creating foreign key on [lang_id] in table 'tb_files'
ALTER TABLE [dbo].[tb_files]
ADD CONSTRAINT [FK_tb_files_tb_lang]
    FOREIGN KEY ([lang_id])
    REFERENCES [dbo].[tb_lang]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tb_files_tb_lang'
CREATE INDEX [IX_FK_tb_files_tb_lang]
ON [dbo].[tb_files]
    ([lang_id]);
GO

-- Creating foreign key on [lang] in table 'tb_files_category'
ALTER TABLE [dbo].[tb_files_category]
ADD CONSTRAINT [FK_tb_files_category_tb_lang]
    FOREIGN KEY ([lang])
    REFERENCES [dbo].[tb_lang]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tb_files_category_tb_lang'
CREATE INDEX [IX_FK_tb_files_category_tb_lang]
ON [dbo].[tb_files_category]
    ([lang]);
GO

-- Creating foreign key on [category_id] in table 'tb_gallery'
ALTER TABLE [dbo].[tb_gallery]
ADD CONSTRAINT [FK_tb_gallery_tb_gallery_category]
    FOREIGN KEY ([category_id])
    REFERENCES [dbo].[tb_gallery_category]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tb_gallery_tb_gallery_category'
CREATE INDEX [IX_FK_tb_gallery_tb_gallery_category]
ON [dbo].[tb_gallery]
    ([category_id]);
GO

-- Creating foreign key on [lang] in table 'tb_news_type'
ALTER TABLE [dbo].[tb_news_type]
ADD CONSTRAINT [FK_tb_news_type_tb_lang]
    FOREIGN KEY ([lang])
    REFERENCES [dbo].[tb_lang]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tb_news_type_tb_lang'
CREATE INDEX [IX_FK_tb_news_type_tb_lang]
ON [dbo].[tb_news_type]
    ([lang]);
GO

-- Creating foreign key on [lang] in table 'tb_question_categorys'
ALTER TABLE [dbo].[tb_question_categorys]
ADD CONSTRAINT [FK_tb_question_categorys_tb_lang]
    FOREIGN KEY ([lang])
    REFERENCES [dbo].[tb_lang]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tb_question_categorys_tb_lang'
CREATE INDEX [IX_FK_tb_question_categorys_tb_lang]
ON [dbo].[tb_question_categorys]
    ([lang]);
GO

-- Creating foreign key on [lang] in table 'tb_question_sub_categorys'
ALTER TABLE [dbo].[tb_question_sub_categorys]
ADD CONSTRAINT [FK_tb_question_sub_categorys_tb_lang]
    FOREIGN KEY ([lang])
    REFERENCES [dbo].[tb_lang]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tb_question_sub_categorys_tb_lang'
CREATE INDEX [IX_FK_tb_question_sub_categorys_tb_lang]
ON [dbo].[tb_question_sub_categorys]
    ([lang]);
GO

-- Creating foreign key on [type_id] in table 'tb_news'
ALTER TABLE [dbo].[tb_news]
ADD CONSTRAINT [FK_tb_news_tb_news_type]
    FOREIGN KEY ([type_id])
    REFERENCES [dbo].[tb_news_type]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tb_news_tb_news_type'
CREATE INDEX [IX_FK_tb_news_tb_news_type]
ON [dbo].[tb_news]
    ([type_id]);
GO

-- Creating foreign key on [prints_id] in table 'tb_prints_content'
ALTER TABLE [dbo].[tb_prints_content]
ADD CONSTRAINT [FK_tb_prints_content_tb_prints]
    FOREIGN KEY ([prints_id])
    REFERENCES [dbo].[tb_prints]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tb_prints_content_tb_prints'
CREATE INDEX [IX_FK_tb_prints_content_tb_prints]
ON [dbo].[tb_prints_content]
    ([prints_id]);
GO

-- Creating foreign key on [print_id] in table 'tb_subscription_request'
ALTER TABLE [dbo].[tb_subscription_request]
ADD CONSTRAINT [FK_tb_subscription_request_tb_prints]
    FOREIGN KEY ([print_id])
    REFERENCES [dbo].[tb_prints]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tb_subscription_request_tb_prints'
CREATE INDEX [IX_FK_tb_subscription_request_tb_prints]
ON [dbo].[tb_subscription_request]
    ([print_id]);
GO

-- Creating foreign key on [category_id] in table 'tb_questions'
ALTER TABLE [dbo].[tb_questions]
ADD CONSTRAINT [FK_tb_questions_tb_question_categorys]
    FOREIGN KEY ([category_id])
    REFERENCES [dbo].[tb_question_categorys]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tb_questions_tb_question_categorys'
CREATE INDEX [IX_FK_tb_questions_tb_question_categorys]
ON [dbo].[tb_questions]
    ([category_id]);
GO

-- Creating foreign key on [category_sub_id] in table 'tb_questions'
ALTER TABLE [dbo].[tb_questions]
ADD CONSTRAINT [FK_tb_questions_tb_question_sub_categorys]
    FOREIGN KEY ([category_sub_id])
    REFERENCES [dbo].[tb_question_sub_categorys]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tb_questions_tb_question_sub_categorys'
CREATE INDEX [IX_FK_tb_questions_tb_question_sub_categorys]
ON [dbo].[tb_questions]
    ([category_sub_id]);
GO

-- Creating foreign key on [role_id] in table 'tb_user_in_role'
ALTER TABLE [dbo].[tb_user_in_role]
ADD CONSTRAINT [FK_tb_user_in_role_tb_user_roles]
    FOREIGN KEY ([role_id])
    REFERENCES [dbo].[tb_user_roles]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tb_user_in_role_tb_user_roles'
CREATE INDEX [IX_FK_tb_user_in_role_tb_user_roles]
ON [dbo].[tb_user_in_role]
    ([role_id]);
GO

-- Creating foreign key on [user_id] in table 'tb_user_in_role'
ALTER TABLE [dbo].[tb_user_in_role]
ADD CONSTRAINT [FK_tb_user_in_role_tb_users]
    FOREIGN KEY ([user_id])
    REFERENCES [dbo].[tb_users]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tb_user_in_role_tb_users'
CREATE INDEX [IX_FK_tb_user_in_role_tb_users]
ON [dbo].[tb_user_in_role]
    ([user_id]);
GO

-- Creating foreign key on [category_id] in table 'tb_question_request'
ALTER TABLE [dbo].[tb_question_request]
ADD CONSTRAINT [FK_tb_question_request_tb_question_sub_categorys]
    FOREIGN KEY ([category_id])
    REFERENCES [dbo].[tb_question_sub_categorys]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tb_question_request_tb_question_sub_categorys'
CREATE INDEX [IX_FK_tb_question_request_tb_question_sub_categorys]
ON [dbo].[tb_question_request]
    ([category_id]);
GO

-- Creating foreign key on [tb_organization_Id] in table 'tb_files'
ALTER TABLE [dbo].[tb_files]
ADD CONSTRAINT [FK_tb_organizationtb_files]
    FOREIGN KEY ([tb_organization_Id])
    REFERENCES [dbo].[tb_organization]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tb_organizationtb_files'
CREATE INDEX [IX_FK_tb_organizationtb_files]
ON [dbo].[tb_files]
    ([tb_organization_Id]);
GO

-- Creating foreign key on [tb_organization_Id] in table 'tb_structure_organization'
ALTER TABLE [dbo].[tb_structure_organization]
ADD CONSTRAINT [FK_tb_organizationtb_structure_organization]
    FOREIGN KEY ([tb_organization_Id])
    REFERENCES [dbo].[tb_organization]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tb_organizationtb_structure_organization'
CREATE INDEX [IX_FK_tb_organizationtb_structure_organization]
ON [dbo].[tb_structure_organization]
    ([tb_organization_Id]);
GO

-- Creating foreign key on [tb_organization_Id] in table 'tb_dc'
ALTER TABLE [dbo].[tb_dc]
ADD CONSTRAINT [FK_tb_organizationtb_dc]
    FOREIGN KEY ([tb_organization_Id])
    REFERENCES [dbo].[tb_organization]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tb_organizationtb_dc'
CREATE INDEX [IX_FK_tb_organizationtb_dc]
ON [dbo].[tb_dc]
    ([tb_organization_Id]);
GO

-- Creating foreign key on [tb_organization_Id] in table 'tb_tasks'
ALTER TABLE [dbo].[tb_tasks]
ADD CONSTRAINT [FK_tb_organizationtb_tasks]
    FOREIGN KEY ([tb_organization_Id])
    REFERENCES [dbo].[tb_organization]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tb_organizationtb_tasks'
CREATE INDEX [IX_FK_tb_organizationtb_tasks]
ON [dbo].[tb_tasks]
    ([tb_organization_Id]);
GO

-- Creating foreign key on [tb_organization_Id] in table 'tb_about_organization'
ALTER TABLE [dbo].[tb_about_organization]
ADD CONSTRAINT [FK_tb_organizationtb_about_organization]
    FOREIGN KEY ([tb_organization_Id])
    REFERENCES [dbo].[tb_organization]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tb_organizationtb_about_organization'
CREATE INDEX [IX_FK_tb_organizationtb_about_organization]
ON [dbo].[tb_about_organization]
    ([tb_organization_Id]);
GO

-- Creating foreign key on [tb_organization_Id] in table 'tb_news'
ALTER TABLE [dbo].[tb_news]
ADD CONSTRAINT [FK_tb_organizationtb_news]
    FOREIGN KEY ([tb_organization_Id])
    REFERENCES [dbo].[tb_organization]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tb_organizationtb_news'
CREATE INDEX [IX_FK_tb_organizationtb_news]
ON [dbo].[tb_news]
    ([tb_organization_Id]);
GO

-- Creating foreign key on [tb_region_Id] in table 'tb_organization'
ALTER TABLE [dbo].[tb_organization]
ADD CONSTRAINT [FK_tb_regiontb_organization]
    FOREIGN KEY ([tb_region_Id])
    REFERENCES [dbo].[tb_region]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tb_regiontb_organization'
CREATE INDEX [IX_FK_tb_regiontb_organization]
ON [dbo].[tb_organization]
    ([tb_region_Id]);
GO

-- Creating foreign key on [tb_lang_id] in table 'tb_tasks'
ALTER TABLE [dbo].[tb_tasks]
ADD CONSTRAINT [FK_tb_langtb_tasks]
    FOREIGN KEY ([tb_lang_id])
    REFERENCES [dbo].[tb_lang]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tb_langtb_tasks'
CREATE INDEX [IX_FK_tb_langtb_tasks]
ON [dbo].[tb_tasks]
    ([tb_lang_id]);
GO

-- Creating foreign key on [tb_lang_id] in table 'tb_about_organization'
ALTER TABLE [dbo].[tb_about_organization]
ADD CONSTRAINT [FK_tb_langtb_about_organization]
    FOREIGN KEY ([tb_lang_id])
    REFERENCES [dbo].[tb_lang]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tb_langtb_about_organization'
CREATE INDEX [IX_FK_tb_langtb_about_organization]
ON [dbo].[tb_about_organization]
    ([tb_lang_id]);
GO

-- Creating foreign key on [tb_lang_id] in table 'tb_structure_organization'
ALTER TABLE [dbo].[tb_structure_organization]
ADD CONSTRAINT [FK_tb_langtb_structure_organization]
    FOREIGN KEY ([tb_lang_id])
    REFERENCES [dbo].[tb_lang]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tb_langtb_structure_organization'
CREATE INDEX [IX_FK_tb_langtb_structure_organization]
ON [dbo].[tb_structure_organization]
    ([tb_lang_id]);
GO

-- Creating foreign key on [tb_lang_id] in table 'tb_organization'
ALTER TABLE [dbo].[tb_organization]
ADD CONSTRAINT [FK_tb_langtb_organization]
    FOREIGN KEY ([tb_lang_id])
    REFERENCES [dbo].[tb_lang]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tb_langtb_organization'
CREATE INDEX [IX_FK_tb_langtb_organization]
ON [dbo].[tb_organization]
    ([tb_lang_id]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------