-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "demographic_data" (
    "trac_id" INT   NOT NULL,
    "state" VARCHAR   NOT NULL,
    "county" VARCHAR   NOT NULL,
    "total_population" INT   NOT NULL,
    "men" INT   NOT NULL,
    "women" INT   NOT NULL,
    "hispanic" INT   NOT NULL,
    "white" INT   NOT NULL,
    "black" INT   NOT NULL,
    "native" INT   NOT NULL,
    "asian" INT   NOT NULL,
    "pacific" INT   NOT NULL,
    "voting_age_citizens" INT   NOT NULL,
    "income" INT   NOT NULL,
    "income_err" INT   NOT NULL,
    "income_per_cap" INT   NOT NULL,
    "poverty" INT   NOT NULL,
    "child_poverty" INT   NOT NULL,
    "professional" INT   NOT NULL,
    "service" INT   NOT NULL,
    "office" INT   NOT NULL,
    "construction" INT   NOT NULL,
    "production" INT   NOT NULL,
    "drive" INT   NOT NULL,
    "carpool" INT   NOT NULL,
    "transit" INT   NOT NULL,
    "walk" INT   NOT NULL,
    "other_transport" INT   NOT NULL,
    "work_at_home" INT   NOT NULL,
    "Mean_commute" INT   NOT NULL,
    "employed" INT   NOT NULL,
    "private_work" INT   NOT NULL,
    "self_employed" INT   NOT NULL,
    "family_work" INT   NOT NULL,
    "unemployment" INT   NOT NULL,
    CONSTRAINT "pk_demographic_data" PRIMARY KEY (
        "trac_id"
     )
);

CREATE TABLE "asthma_by_county" (
    "county" VARCHAR   NOT NULL,
    "years" DATE   NOT NULL,
    "age_group" VARCHAR   NOT NULL,
    "asthma_prevalence" BOUL   NOT NULL,
    CONSTRAINT "pk_asthma_by_county" PRIMARY KEY (
        "county"
     )
);

CREATE TABLE "air_pollutants" (
    "state" VARCHAR   NOT NULL,
    "county" VARCHAR   NOT NULL,
    "year" DATE   NOT NULL,
    "pollutant_value" FLOAT   NOT NULL,
    "pollutant" VARCHAR   NOT NULL
);

CREATE TABLE "wildfires" (
    "acres_burned" INT   NOT NULL,
    "year" DATE   NOT NULL,
    "cal_fire_incident" BOUL   NOT NULL,
    "county" VARCHAR   NOT NULL
);

CREATE TABLE "ev_chargers" (
    "state" VARCHAR   NOT NULL,
    "county" VARCHAR   NOT NULL,
    "zipcode" INT   NOT NULL,
    "group_w_access" BOUL   NOT NULL,
    "facility_type" VARCHAR   NOT NULL
);

CREATE TABLE "registered_evs" (
    "county" VARCHAR   NOT NULL,
    "ev_count" INT   NOT NULL
);

CREATE TABLE "solar_energy" (
    "zipcode" INT   NOT NULL,
    "count" INT   NOT NULL,
    "energy_generated" FLOAT   NOT NULL
);

CREATE TABLE "electric_substations" (
    "object_ID" INT   NOT NULL,
    "county" VARCHAR   NOT NULL,
    "state" VARCHAR   NOT NULL,
    "zipcode" INT   NOT NULL,
    "max_voltage" INT   NOT NULL,
    "source" VARCHAR   NOT NULL,
    "owner" VARCHAR   NOT NULL,
    CONSTRAINT "pk_electric_substations" PRIMARY KEY (
        "object_ID"
     )
);

ALTER TABLE "demographic_data" ADD CONSTRAINT "fk_demographic_data_county" FOREIGN KEY("county")
REFERENCES "asthma_by_county" ("county");

ALTER TABLE "air_pollutants" ADD CONSTRAINT "fk_air_pollutants_county" FOREIGN KEY("county")
REFERENCES "asthma_by_county" ("county");

ALTER TABLE "wildfires" ADD CONSTRAINT "fk_wildfires_county" FOREIGN KEY("county")
REFERENCES "asthma_by_county" ("county");

ALTER TABLE "ev_chargers" ADD CONSTRAINT "fk_ev_chargers_county" FOREIGN KEY("county")
REFERENCES "asthma_by_county" ("county");

ALTER TABLE "registered_evs" ADD CONSTRAINT "fk_registered_evs_county" FOREIGN KEY("county")
REFERENCES "asthma_by_county" ("county");

ALTER TABLE "solar_energy" ADD CONSTRAINT "fk_solar_energy_zipcode" FOREIGN KEY("zipcode")
REFERENCES "ev_chargers" ("zipcode");

ALTER TABLE "electric_substations" ADD CONSTRAINT "fk_electric_substations_county" FOREIGN KEY("county")
REFERENCES "asthma_by_county" ("county");

