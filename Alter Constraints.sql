CALL prereq_LastRecordUpdate();

ALTER TABLE USER 
	MODIFY UserID Int NOT NULL AUTO_INCREMENT;
ALTER TABLE USER AUTO_INCREMENT = 11;

ALTER TABLE CLASS
	MODIFY ClassID Int NOT NULL AUTO_INCREMENT;
ALTER TABLE CLASS AUTO_INCREMENT = 5;

ALTER TABLE USER_CHARACTER
	MODIFY CharacterID Int NOT NULL AUTO_INCREMENT;
ALTER TABLE USER_CHARACTER AUTO_INCREMENT = 18;

ALTER TABLE CHARACTER_CONNECT
	MODIFY ConnectID Int NOT NULL AUTO_INCREMENT;
ALTER TABLE CHARACTER_CONNECT AUTO_INCREMENT = 317;

ALTER TABLE CHARACTER_PAYMENT
	MODIFY PaymentID Int NOT NULL AUTO_INCREMENT;
ALTER TABLE CHARACTER_PAYMENT AUTO_INCREMENT = 53;


ALTER TABLE CHARACTER_PAYMENT
    ADD			CONSTRAINT		CharacterPayFK		FOREIGN KEY(CharacterID)
													REFERENCES USER_CHARACTER(CharacterID)
													ON UPDATE NO ACTION
													ON DELETE CASCADE;
                                                    
ALTER TABLE CHARACTER_CONNECT
	ADD    		CONSTRAINT		CharacterFK			FOREIGN KEY(CharacterID)
													REFERENCES USER_CHARACTER(CharacterID)
													ON UPDATE NO ACTION
													ON DELETE CASCADE;
                                                    
ALTER TABLE USER_CHARACTER
	ADD			CONSTRAINT 		ClassFK				FOREIGN KEY(ClassID)
													REFERENCES CLASS(ClassID)
													ON UPDATE NO ACTION
													ON DELETE CASCADE,
	ADD			CONSTRAINT 		UserFK				FOREIGN KEY(UserID)
													REFERENCES USER(UserID)
													ON UPDATE NO ACTION
													ON DELETE CASCADE;