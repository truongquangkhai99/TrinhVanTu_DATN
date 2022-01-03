DELIMITER $$
CREATE TRIGGER update_DiemXetTuyen  BEFORE INSERT ON nguyen_vong 
FOR EACH ROW
BEGIN 
	
	SET new.diem_xet_tuyen = new.diemtb_mon_ba + new.diemtb_mon_hai + new.diemtb_mon_mot;
	
END$$
 
DELIMITER ;

DELIMITER $$
CREATE TRIGGER update_DiemXetTuyen  BEFORE INSERT ON nguyen_vong 
FOR EACH ROW
BEGIN 
	UPDATE nguyen_vong
	SET diem_xet_tuyen = new.diemtb_mon_ba + new.diemtb_mon_hai + new.diemtb_mon_mot
	WHERE id = new.id;
END$$
 
DELIMITER ;
