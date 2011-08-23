CREATE TABLE ship_data (
    logid integer,
    shipname character varying(64),
    callsign character varying(20),
    flag character varying(32),
    "owner" character varying(256),
    gt integer,
    loa numeric(5,2),
    boa numeric(5,2),
    draftfwd numeric(5,2),
    aft numeric(5,2),
    airdraft numeric(5,2),
    entrytime timestamp with time zone DEFAULT now(),
    editorid integer,
    imonumber character varying(16),
    propelers integer,
    proptype boolean DEFAULT false,
    thrusters integer
);
