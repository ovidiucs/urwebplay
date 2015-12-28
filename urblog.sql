CREATE TABLE uw_Urblog_entry(uw_id int8 NOT NULL, uw_title text NOT NULL, 
                              uw_created timestamp NOT NULL, 
                              uw_author text NOT NULL, uw_body text NOT NULL,
 PRIMARY KEY (uw_id)
  
 );
 
 CREATE SEQUENCE uw_Urblog_commentS;
  
  CREATE TABLE uw_Urblog_comment(uw_id int8 NOT NULL, uw_entry int8 NOT NULL, 
                                  uw_created timestamp NOT NULL, 
                                  uw_author text NOT NULL, 
                                  uw_body text NOT NULL,
   PRIMARY KEY (uw_id),
    CONSTRAINT uw_Urblog_comment_Entry
     FOREIGN KEY (uw_entry) REFERENCES uw_Urblog_entry (uw_id)
   );
   
   CREATE SEQUENCE uw_Urblog_seq;
    
    