CREATE SEQUENCE GL_DL_RATES_ID_S START WITH 1 INCREMENT BY 1;

CREATE OR REPLACE TRIGGER populate_gl_dl_rates_rec_id
  BEFORE INSERT ON GL_DAILY_RATES_STG
  FOR EACH ROW
BEGIN
  SELECT GL_DL_RATES_ID_S.NEXTVAL, SYSDATE
    INTO :NEW.record_id, :NEW.data_load_date
    FROM dual;
END;