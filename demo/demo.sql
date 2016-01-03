CREATE TABLE uw_Sql_t(uw_a int8 NOT NULL, uw_b float8 NOT NULL, 
                       uw_c text NOT NULL, uw_d bool NOT NULL,
 PRIMARY KEY (uw_a)
  
 );
 
 CREATE SEQUENCE uw_Ref_IR_s;
  
  CREATE TABLE uw_Ref_IR_t(uw_id int8 NOT NULL, uw_data int8 NOT NULL,
   PRIMARY KEY (uw_id)
    
   );
   
   CREATE SEQUENCE uw_Ref_SR_s;
    
    CREATE TABLE uw_Ref_SR_t(uw_id int8 NOT NULL, uw_data text NOT NULL,
     PRIMARY KEY (uw_id)
      
     );
     
     CREATE SEQUENCE uw_Tree_s;
      
      CREATE TABLE uw_Tree_t(uw_id int8 NOT NULL, uw_parent int8, 
                              uw_nam text NOT NULL,
       PRIMARY KEY (uw_id),
        CONSTRAINT uw_Tree_t_F
         FOREIGN KEY (uw_parent) REFERENCES uw_Tree_t (uw_id) ON DELETE CASCADE
       );
       
       CREATE TABLE uw_Constraints_t(uw_id int8 NOT NULL, uw_nam text NOT NULL, 
                                      uw_parent int8,
        PRIMARY KEY (uw_id),
         CONSTRAINT uw_Constraints_t_Nam UNIQUE (uw_nam),
                                                         
          CONSTRAINT uw_Constraints_t_Id CHECK (uw_id >= 0::int8),
                                                                  
          CONSTRAINT uw_Constraints_t_Parent
           FOREIGN KEY (uw_parent) REFERENCES uw_Constraints_t (uw_id)
        );
        
        CREATE TABLE uw_Outer_t(uw_id int8 NOT NULL, uw_b text NOT NULL,
         PRIMARY KEY (uw_id)
          
         );
         
         CREATE TABLE uw_Outer_u(uw_id int8 NOT NULL, uw_link int8 NOT NULL, 
                                  uw_c text NOT NULL, uw_d float8,
          PRIMARY KEY (uw_id),
           CONSTRAINT uw_Outer_u_Link
            FOREIGN KEY (uw_link) REFERENCES uw_Outer_t (uw_id)
          );
          
          CREATE TABLE uw_View_t(uw_a int8 NOT NULL
           );
           
           CREATE VIEW uw_View_v AS
            SELECT T_T.uw_a AS uw_A FROM uw_View_t AS T_T WHERE (T_T.uw_a > 7::int8);
            
            CREATE TABLE uw_CookieSec_lastVisit(uw_user text NOT NULL, 
                                                 uw_when timestamp NOT NULL,
             PRIMARY KEY (uw_user)
              
             );
             
             CREATE TABLE uw_Crud1_t1(uw_id int8 NOT NULL, uw_a int8 NOT NULL, 
                                       uw_b text NOT NULL, 
                                       uw_c float8 NOT NULL, uw_d bool NOT NULL,
              PRIMARY KEY (uw_id)
               
              );
              
              CREATE SEQUENCE uw_Crud1_seq;
               
               CREATE TABLE uw_Crud2_t(uw_id int8 NOT NULL, 
                                        uw_nam text NOT NULL, 
                                        uw_ready bool NOT NULL,
                PRIMARY KEY (uw_id)
                 
                );
                
                CREATE SEQUENCE uw_Crud2_seq;
                 
                 CREATE TABLE uw_Crud3_t(uw_id int8 NOT NULL, 
                                          uw_text text NOT NULL,
                  PRIMARY KEY (uw_id)
                   
                  );
                  
                  CREATE SEQUENCE uw_Crud3_seq;
                   
                   CREATE SEQUENCE uw_Increment_seq;
                    
                    CREATE TABLE uw_Noisy_t(uw_id int8 NOT NULL, 
                                             uw_a text NOT NULL,
                     PRIMARY KEY (uw_id)
                      
                     );
                     
                     CREATE TABLE uw_Batch_t(uw_id int8 NOT NULL, 
                                              uw_a text NOT NULL,
                      PRIMARY KEY (uw_id)
                       
                      );
                      
                      CREATE TABLE uw_BatchG_t(uw_id int8 NOT NULL, 
                                                uw_a text NOT NULL, 
                                                uw_b float8 NOT NULL,
                       PRIMARY KEY (uw_id)
                        
                       );
                       
                       CREATE TABLE uw_RoundTrip_channels(uw_client
                                                           int4 NOT NULL, 
                                                           uw_channel
                                                            int8 NOT NULL,
                        PRIMARY KEY (uw_client)
                         
                        );
                        
                        CREATE SEQUENCE uw_Chat_Room_s;
                         
                         CREATE TABLE uw_Chat_Room_t(uw_id int8 NOT NULL, 
                                                      uw_client int4 NOT NULL, 
                                                      uw_channel int8 NOT NULL,
                          PRIMARY KEY (uw_client, uw_id)
                           
                          );
                          
                          CREATE SEQUENCE uw_Chat_s;
                           
                           CREATE TABLE uw_Chat_t(uw_id int8 NOT NULL, 
                                                   uw_title text NOT NULL, 
                                                   uw_room int8 NOT NULL,
                            PRIMARY KEY (uw_id)
                             
                            );
                            
                            