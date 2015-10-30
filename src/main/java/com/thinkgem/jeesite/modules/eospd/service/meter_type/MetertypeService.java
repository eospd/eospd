/**
 * Copyright &copy; 2012-2014 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.eospd.service.meter_type;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.service.CrudService;
import com.thinkgem.jeesite.modules.eospd.entity.meter_type.Metertype;
import com.thinkgem.jeesite.modules.eospd.dao.meter_type.MetertypeDao;

/**
 * 仪表型号信息Service
 * @author denofiend
 * @version 2015-10-30
 */
@Service
@Transactional(readOnly = true)
public class MetertypeService extends CrudService<MetertypeDao, Metertype> {

	public Metertype get(String id) {
		return super.get(id);
	}
	
	public List<Metertype> findList(Metertype metertype) {
		return super.findList(metertype);
	}
	
	public Page<Metertype> findPage(Page<Metertype> page, Metertype metertype) {
		return super.findPage(page, metertype);
	}
	
	@Transactional(readOnly = false)
	public void save(Metertype metertype) {
		super.save(metertype);
	}
	
	@Transactional(readOnly = false)
	public void delete(Metertype metertype) {
		super.delete(metertype);
	}
	
}