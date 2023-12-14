-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/KUlKpW
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE category (
    category_id varchar(4)   NOT NULL,
    category varchar(15)   NOT NULL,
    CONSTRAINT pk_category PRIMARY KEY (
        category_id
     )
);

CREATE TABLE subcategory (
    subcategory_id varchar(8)   NOT NULL,
    subcategory varchar(20)   NOT NULL,
    CONSTRAINT pk_subcategory PRIMARY KEY (
        subcategory_id
     )
);

CREATE TABLE contacts (
    contact_id int   NOT NULL,
    first_name varchar(20)   NOT NULL,
    last_name varchar(20)   NOT NULL,
    email varchar(50)   NOT NULL,
    CONSTRAINT pk_contacts PRIMARY KEY (
        contact_id
     )
);

CREATE TABLE campaign (
    cf_id int   NOT NULL,
    contact_id int   NOT NULL,
    Company_name varchar(40)   NOT NULL,
    Description varchar(60)   NOT NULL,
    Goal decimal   NOT NULL,
    pledged decimal   NOT NULL,
    Outcome varchar(10)   NOT NULL,
    Backers_count int   NOT NULL,
    Country varchar(2)   NOT NULL,
    Currency varchar(3)   NOT NULL,
    Launch_date date   NOT NULL,
    End_date date   NOT NULL,
    Category_id varchar(4)   NOT NULL,
    Subcategory_id varchar(8)   NOT NULL,
    CONSTRAINT pk_campaign PRIMARY KEY (
        cf_id
     )
);

ALTER TABLE campaign ADD CONSTRAINT fk_campaign_contact_id FOREIGN KEY(contact_id)
REFERENCES contacts (contact_id);

ALTER TABLE campaign ADD CONSTRAINT fk_campaign_Category_id FOREIGN KEY(Category_id)
REFERENCES category (category_id);

ALTER TABLE campaign ADD CONSTRAINT fk_campaign_Subcategory_id FOREIGN KEY(Subcategory_id)
REFERENCES subcategory (subcategory_id);

