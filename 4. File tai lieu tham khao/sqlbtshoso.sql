SELECT 
  `ho_so_xet_tuyen`.*,
  nguyen_vong.diemtb_mon_mot,
  nguyen_vong.diemtb_mon_hai,
  nguyen_vong.diemtb_mon_ba,
  nguyen_vong.`id_to_hop_mon`,
  to_hop_mon.`ma_to_hop_mon`,
  to_hop_mon.`id_nganh`,
  nganh.`ten_nganh` 
  nguyen_vong.``nguyen_vong`
FROM
  ho_so_xet_tuyen 
  LEFT join nguyen_vong 
    ON ho_so_xet_tuyen.id = nguyen_vong.`id_ho_so_xet_tuyen` 
  LEFT JOIN to_hop_mon 
    ON to_hop_mon.id = nguyen_vong.`id_to_hop_mon` 
  LEFT JOIN nganh 
    ON nganh.id = to_hop_mon.`id_nganh` 